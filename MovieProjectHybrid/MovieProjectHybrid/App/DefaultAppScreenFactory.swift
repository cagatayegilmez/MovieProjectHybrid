//
//  DefaultAppScreenFactory.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import UIKit

final class DefaultAppScreenFactory: AppScreenFactory {

    func makeMovieList() -> UIViewController {
        let dataController = HomeDataController()
        let viewModel = HomeViewModel(dataController: dataController)
        let view = HomeView(viewModel: viewModel)
        let viewController = HomeViewController(viewModel: viewModel)
        viewController.addSwiftUIView(view)
        return viewController
    }

    func makeMovieDetail(movieId: Int) -> UIViewController {
        // - TODO: create movie detail screen
        UIViewController()
    }
}
