//
//  HomeView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import SwiftUI

private enum Constant {

    /// Body constants
    static let searchAreaSpacing: CGFloat = 8
    static let searchAreaHeight: CGFloat = 24
    static let clearButtonTrailing: CGFloat = 20
    static let completeViewHeight: CGFloat = 35
    static let cornerRadius: CGFloat = 12
    static let inputSpace: CGFloat = 12
    static let searchIconSize = CGSize(width: 24, height: 24)
    static let visibleOpacity: Double = 1.0
    static let emptyString = ""
    static let clearIconSize = CGSize(width: 18, height: 18)
    static let placeholderText = "Search movies..."
    static let animationDuration = TimeInterval(0.18)
}

struct HomeView<ViewModel>: View where ViewModel: HomeViewModelProtocol {

    @ObservedObject var viewModel: ViewModel

    var body: some View {
        VStack {
            switch viewModel.viewState {
            case .loading:
                // - TODO: Create loading view
                EmptyView()
            case .success:
                searchView()
                if !viewModel.searchResults.isEmpty {
                    listView()
                        .frame(maxHeight: 250)
                }
                Spacer()
            case .error(let error):
                // - TODO: Create error view
                EmptyView()
            }
        }
        .task {
            viewModel.onAppear()
        }
    }

    @ViewBuilder
    private func searchView() -> some View {
        HStack(spacing: Constant.searchAreaSpacing) {
            Spacer(minLength: 15)
            Image(.searchIcon)
                .resizable()
                .frame(width: Constant.searchIconSize.width,
                       height: Constant.searchIconSize.height)
                .aspectRatio(contentMode: .fill)
            ZStack(alignment: .leading) {
                Text(Constant.placeholderText)
                    .font(Font.system(size: 15))
                    .foregroundColor(.secondary)
                    .opacity(!viewModel.queryString.isEmpty
                             ? .zero
                             : Constant.visibleOpacity)
                    .allowsHitTesting(false)
                TextField(Constant.emptyString, text: $viewModel.queryString)
                    .font(Font.system(size: 15))
                    .foregroundColor(.primary)
                    .disableAutocorrection(true)
            }
            .frame(height: Constant.searchAreaHeight)
            if !viewModel.queryString.isEmpty {
                Button(action: clearAction) {
                    Image(.closeButton)
                        .frame(width: Constant.clearIconSize.width,
                               height: Constant.clearIconSize.height)
                }
                .padding(.trailing, Constant.clearButtonTrailing)
            }
        }
        .frame(height: Constant.completeViewHeight)
        .background(Color(uiColor: .systemBackground))
        .cornerRadius(Constant.cornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constant.cornerRadius)
                .stroke(Color.secondary)
        )
        .padding(.horizontal, Constant.inputSpace)
    }

    @ViewBuilder
    private func listView() -> some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(viewModel.searchResults, id: \.self) { item in
                    VStack(alignment: .leading) {
                        HStack(alignment: .center, spacing: 15) {
                            let url = URL(string: item.imageUrl ?? Constant.emptyString)
                            AsyncImage(url: url) { phase in
                                switch phase {
                                case .success(let image):
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 60)
                                case .empty, .failure:
                                    EmptyView()
                                @unknown default:
                                    EmptyView()
                                }
                            }
                            Text(item.title ?? Constant.emptyString)
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                        .padding(.trailing, 15)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                    }
                    .padding(.leading, 15)
                }
            }
        }
        .background(Color(uiColor: .systemBackground))
    }

    private func clearAction() {
        withAnimation(.easeOut(duration: Constant.animationDuration)) {
            viewModel.queryString = Constant.emptyString
        }
    }
}
