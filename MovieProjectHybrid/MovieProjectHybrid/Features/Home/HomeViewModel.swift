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

    @Published private(set) var viewState: ViewState = .loading
    @Published private(set) var nowPlayingMovies: [MovieListModel] = []
    @Published private(set) var upcomingMovies: [MovieListModel] = []
    @Published private(set) var searchResults: [MovieListModel] = []
    @Published var queryString: String = "" {
        didSet {
            searchMovies(query: queryString)
        }
    }
    private var dataController: HomeDataProtocol
    private var currentPage = 1
    private var totalPages = 1

    init(dataController: HomeDataProtocol) {
        self.dataController = dataController
    }

    deinit {
        Task { @MainActor in
            await NetworkScheduler.shared.killAllTasks()
        }
    }

    func onAppear() {
        viewState = .loading
        Task {
            do {
                try await NetworkScheduler.shared.doQueue { [weak self] in
                    guard let self else {
                        return
                    }

                    async let nowPlaying = self.dataController.fetchNowPlayingList()
                    async let upcoming = self.dataController.fetchUpcomingList(currentPage)
                    let (now, up) = try await (nowPlaying, upcoming)
                    await MainActor.run {
                        self.viewState = .success
                        self.nowPlayingMovies = now?.results ?? []
                        self.upcomingMovies = up?.results ?? []
                        self.totalPages = up?.total_pages ?? 1
                    }
                }
            } catch {
                await MainActor.run {
                    let message = (error as? LocalizedError)?.errorDescription ?? error.localizedDescription
                    viewState = .error(message: message)
                }
            }
        }
    }

    func refresh() {
        currentPage = 1
        onAppear()
    }

    func loadMoreMovies() async {
        currentPage += 1
        guard currentPage <= totalPages else {
            await MainActor.run {
                let message = "End of the list."
                viewState = .error(message: message)
            }
            return
        }

        viewState = .loading
        Task {
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
    }

    private func searchMovies(query: String) {
        Task {
            do {
                try await NetworkScheduler.shared.doQueue { [weak self] in
                    guard let self else {
                        return
                    }

                    let response = try await self.dataController.searchInMovies(query, currentPage)
                    await MainActor.run {
                        self.searchResults = response?.results ?? []
                    }
                }
            }
        }
    }
}
