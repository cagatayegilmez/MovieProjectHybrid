//
//  HomeView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import SwiftUI

struct HomeView<ViewModel>: View where ViewModel: HomeViewModelProtocol {

    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            switch viewModel.viewState {
            case .loading:
                // - TODO: Create loading view
                EmptyView()
            case .success:
                // - TODO: Create main screen
                EmptyView()
                // - TODO: Create error popup
            case .error(let error):
                EmptyView()
            }
        }
        .task {
            viewModel.onAppear()
        }
    }
}
