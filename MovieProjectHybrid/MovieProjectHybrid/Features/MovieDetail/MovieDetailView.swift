//
//  MovieDetailView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 26.01.2026.
//

import SwiftUI

private enum Constant {

    static let emptyString = ""
}

struct MovieDetailView<ViewModel>: View where ViewModel: MovieDetailViewModelProtocol {

    @ObservedObject var viewModel: ViewModel
    weak var loader: SwiftUILoaderProtocol?

    var body: some View {
        VStack {
            switch viewModel.viewState {
            case .success:
                if let movieDetail = viewModel.movieDetail {
                    ParallaxView(movieDetail: movieDetail)
                } else {
                    EmptyView()
                }
            case .error(message: let error):
                // - TODO: Create error view
                EmptyView()
            }
        }
        .task {
            viewModel.onAppear()
        }
        .onChange(of: viewModel.isLoading) {
            loader?.toggleLoading(isLoading: $0)
        }
    }
}
