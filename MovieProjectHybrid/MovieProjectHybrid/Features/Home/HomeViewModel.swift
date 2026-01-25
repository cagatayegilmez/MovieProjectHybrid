//
//  HomeViewModel.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import Combine
import Foundation

@MainActor
final class HomeViewModel: NSObject, HomeViewModelProtocol {

    @Published var isLoading = false
    @Published private(set) var viewState: ViewState = .error(message: "")
    @Published private(set) var nowPlayingMovies: [MovieListModel] = []
    @Published private(set) var upcomingMovies: [MovieListModel] = []
    @Published private(set) var searchResults: [MovieListModel] = []
    @Published var queryString: String = "" {
        didSet {
            if queryString.isEmpty {
                searchResults.removeAll()
                return
            }
            scheduleSearch(for: queryString)
        }
    }
    private let dataController: HomeDataProtocol
    private var currentPage = 1
    private var totalPages = 1
    private var searchTask: Task<Void, Never>?
    private let minimumSearchLength = 2
    private let searchDebounceNanoseconds: UInt64 = 350_000_000
    private var isLoadingMore = false

    init(dataController: HomeDataProtocol) {
        self.dataController = dataController
    }

    deinit {
        searchTask?.cancel()
        Task { @MainActor in
            await NetworkScheduler.shared.killAllTasks()
        }
    }

    func onAppear() {
        isLoading = true
        Task {
            await loadInitialMovies()
        }
    }

    func refresh() {
        currentPage = 1
        onAppear()
    }

    func loadMoreMovies() async {
        guard !isLoadingMore else {
            return
        }
        isLoadingMore = true
        defer {
            isLoadingMore = false
        }
        let nextPage = currentPage + 1
        guard nextPage <= totalPages else {
            await MainActor.run {
                let message = "End of the list."
                viewState = .error(message: message)
            }
            return
        }

        currentPage = nextPage
        do {
            try await NetworkScheduler.shared.doQueue { [weak self] in
                guard let self else {
                    return
                }

                let response = try await self.dataController.fetchUpcomingList(self.currentPage)
                await MainActor.run {
                    self.viewState = .success
                    self.upcomingMovies.append(contentsOf: response?.results ?? [])
                }
            }
        } catch {
            await MainActor.run {
                let message = (error as? LocalizedError)?.errorDescription ?? error.localizedDescription
                viewState = .error(message: message)
            }
        }
    }

    private func loadInitialMovies() async {
        do {
            try await NetworkScheduler.shared.doQueue { [weak self] in
                guard let self else {
                    return
                }

                async let nowPlaying = self.dataController.fetchNowPlayingList()
                async let upcoming = self.dataController.fetchUpcomingList(currentPage)
                let (now, up) = try await (nowPlaying, upcoming)
                await MainActor.run {
                    self.isLoading = false
                    self.viewState = .success
                    self.nowPlayingMovies = now?.results ?? []
                    self.upcomingMovies = up?.results ?? []
                    self.totalPages = up?.total_pages ?? 1
                }
            }
        } catch {
            await MainActor.run {
                isLoading = false
                let message = (error as? LocalizedError)?.errorDescription ?? error.localizedDescription
                viewState = .error(message: message)
            }
        }
    }

    private func scheduleSearch(for query: String) {
        searchTask?.cancel()
        let trimmed = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard trimmed.count >= minimumSearchLength else {
            searchResults = []
            return
        }

        searchTask = Task { [weak self] in
            try? await Task.sleep(nanoseconds: self?.searchDebounceNanoseconds ?? 0)
            guard !Task.isCancelled else {
                return
            }
            await self?.performSearch(query: trimmed)
        }
    }

    private func performSearch(query: String) async {
        do {
            try await NetworkScheduler.shared.doQueue { [weak self] in
                guard let self else {
                    return
                }

                let response = try await self.dataController.searchInMovies(query, currentPage)
                await MainActor.run {
                    self.searchResults = (response?.results ?? []).filter {
                        $0.backdrop_path != nil
                    }
                }
            }
        } catch {
            await MainActor.run {
                self.searchResults = []
            }
            #if DEBUG
            print("Search failed: \(error)")
            #endif
        }
    }
}
