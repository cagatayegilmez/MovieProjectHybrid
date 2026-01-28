//
//  MovieDetailViewModel.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 26.01.2026.
//

import Combine
import Foundation

@MainActor
final class MovieDetailViewModel: NSObject, MovieDetailViewModelProtocol {

    @Published var isLoading = false
    @Published private(set) var viewState: ViewState = .error(message: "")
    @Published private(set) var movieDetail: MovieDetailModel?
    @Published private(set) var similarMovies: [SimilarMoviesListModel] = []
    private let dataController: MovieDetailDataProtocol
    private let movieId: Int
    private var currentPage = 1
    private var totalPages = 1

    init(dataController: MovieDetailDataProtocol,
         movieId: Int) {
        self.dataController = dataController
        self.movieId = movieId
    }

    deinit {
        Task { @MainActor in
            await NetworkScheduler.shared.killAllTasks()
        }
    }

    func onAppear() {
        isLoading = true
        Task {
            await loadInitialData()
        }
    }

    private func loadInitialData() async {
        do {
            try await NetworkScheduler.shared.doQueue { [weak self] in
                guard let self else {
                    return
                }

                async let movieDetail = self.dataController.fetchMovieDetail(movieId)
                async let similarMovies = self.dataController.fetchSimilarMovies(movieId, currentPage)
                let (detail, similar) = try await (movieDetail, similarMovies)
                await MainActor.run {
                    self.isLoading = false
                    self.viewState = .success
                    guard let detail, let similar else {
                        return
                    }

                    self.movieDetail = detail
                    self.similarMovies = similar.results ?? []
                    self.totalPages = similar.total_pages ?? 1
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
}
