//
//  CarouselView.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 24.01.2026.
//

import SwiftUI

struct CarouselView: View {
    let movies: [MovieListModel]
    let onSelect: (MovieListModel) -> Void

    var body: some View {
        TabView {
            ForEach(movies, id: \.id) { movie in
                CarouselCard(movie: movie)
                    .onTapGesture {
                        onSelect(movie)
                    }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
}

private struct CarouselCard: View {

    let movie: MovieListModel
    private var placeholder: Color {
        Color(.systemGray4)
    }

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            AsyncImage(url: URL(string: movie.imageUrl ?? "")) { phase in
                switch phase {
                case .empty:
                    placeholder
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure:
                    placeholder
                @unknown default:
                    placeholder
                }
            }
            .clipped()

            LinearGradient(
                gradient: Gradient(colors: [Color.white.opacity(0.4), Color.black.opacity(0.6)]),
                startPoint: .top,
                endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 8) {
                let dateString = String(Calendar.current.component(.year, from: movie.releaseDate))
                Text("\(movie.title ?? "") (\(dateString))")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)

                Text(movie.overview ?? "")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 24)
        }
    }
}
