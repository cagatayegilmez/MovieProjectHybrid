//
//  HomeView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import SwiftUI

private enum Constant {

    static let emptyString = ""
    /// 16:9 static frame
    static let carouselHeight: CGFloat = UIScreen.main.bounds.width / 1.77
}

struct HomeView<ViewModel>: View where ViewModel: HomeViewModelProtocol {

    @ObservedObject var viewModel: ViewModel
    @State private var wholeSize: CGSize = .zero
    @State private var scrollViewSize: CGSize = .zero
    private let spaceName = "scroll"
    private var placeholder: Color {
        Color(.systemGray4)
    }

    var body: some View {
        VStack {
            switch viewModel.viewState {
            case .loading:
                // - TODO: Create loading view
                EmptyView()
            case .success:
                SearchView(searchResults: viewModel.searchResults,
                           queryString: $viewModel.queryString) { selectedMovie in
                    // - TODO: Route to movie detail
                    print(selectedMovie.title ?? Constant.emptyString)
                }
                ChildSizeReader(size: $wholeSize) {
                    ScrollView(.vertical, showsIndicators: false) {
                        CarouselView(movies: viewModel.nowPlayingMovies) { selectedMovie in
                            // - TODO: Route to movie detail
                            print(selectedMovie.title ?? Constant.emptyString)
                        }
                        .frame(height: Constant.carouselHeight)
                        ChildSizeReader(size: $scrollViewSize) {
                            VStack {
                                ForEach(viewModel.upcomingMovies, id: \.id) { movie in
                                    movieListRow(movie: movie)
                                        .onTapGesture {
                                            // - TODO: Route to movie detail
                                            print(movie.title ?? Constant.emptyString)
                                        }
                                        .background(
                                            GeometryReader { proxy in
                                                Color.clear.preference(
                                                    key: ViewOffsetKey.self,
                                                    value: -1 * proxy.frame(in: .named(spaceName)).origin.y
                                                )
                                            }
                                        )
                                        .onPreferenceChange(ViewOffsetKey.self) { value in
                                            if value >= scrollViewSize.height - wholeSize.height {
                                                Task {
                                                    await viewModel.loadMoreMovies()
                                                }
                                            }
                                        }
                                }
                            }
                        }
                    }
                    .refreshable {
                        viewModel.refresh()
                    }
                    .coordinateSpace(name: spaceName)
                }
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
    private func movieListRow(movie: MovieListModel) -> some View {
        HStack(spacing: 12) {
            AsyncImage(url: URL(string: movie.imageUrl
                                ?? Constant.emptyString)) { phase in
                switch phase {
                case .empty:
                    placeholder
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                case .failure:
                    placeholder
                @unknown default:
                    placeholder
                }
            }
            .frame(width: 104, height: 104)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            VStack(alignment: .leading, spacing: 8) {
                Text(movie.title ?? Constant.emptyString)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color(hex: "#2B2D42"))
                Text(movie.overview ?? Constant.emptyString)
                    .font(.system(size: 13))
                    .foregroundColor(Color(hex: "#8D99AE"))
                    .lineLimit(4)
                HStack {
                    Spacer()
                    let dateString = String(Calendar.current.component(.year, from: movie.releaseDate))
                    Text(dateString)
                        .font(.system(size: 12))
                        .foregroundColor(Color(hex: "#8D99AE"))
                }
            }
            Image(systemName: "chevron.right")
                .font(.system(size: 12, weight: .semibold))
                .foregroundColor(Color(hex: "#8D99AE"))
                .padding(.trailing, 6)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 16)
        .background(Color.white)
    }
}
