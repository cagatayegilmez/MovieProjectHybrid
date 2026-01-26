//
//  DefaultAppScreenFactory.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import UIKit

final class DefaultAppScreenFactory: AppScreenFactory {

    var navigate: ((AppRoute) -> Void)?

    func makeMovieList() -> UIViewController {
        let dataController = HomeDataController()
        let viewModel = HomeViewModel(dataController: dataController) { [weak self] movieId, title in
            self?.navigate?(.movieDetail(movieId: movieId, title: title))
        }
        let viewController = HomeViewController(viewModel: viewModel)
        let view = HomeView(viewModel: viewModel, loader: viewController)
        viewController.addSwiftUIView(view)
        return viewController
    }

    func makeMovieDetail(movieId: Int, movieTitle: String) -> UIViewController {
        let dataController = MovieDetailDataController()
        let viewModel = MovieDetailViewModel(dataController: dataController, movieId: movieId)
        let viewController = MovieDetailViewController(viewModel: viewModel)
        viewController.title = movieTitle
        let view = MovieDetailView(viewModel: viewModel, loader: viewController)
        viewController.addSwiftUIView(view)
        return viewController
    }
}
