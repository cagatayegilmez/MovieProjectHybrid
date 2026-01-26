//
//  MovieDetailView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 26.01.2026.
//

import SwiftUI

private enum Constant {

    static let emptyString = ""
    /// 16:9 static frame
    static let carouselHeight: CGFloat = UIScreen.main.bounds.width / 1.77
}

struct MovieDetailView<ViewModel>: View where ViewModel: MovieDetailViewModelProtocol {

    @ObservedObject var viewModel: ViewModel
    weak var loader: SwiftUILoaderProtocol?

    var body: some View {
        VStack {
        }
        .task {
            viewModel.onAppear()
        }
        .onChange(of: viewModel.isLoading) {
            loader?.toggleLoading(isLoading: $0)
        }
    }
}
