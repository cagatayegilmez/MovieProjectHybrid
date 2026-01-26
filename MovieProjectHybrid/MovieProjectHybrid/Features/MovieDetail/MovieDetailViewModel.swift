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
    }
}
