//
//  MovieDetailDataController.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 26.01.2026.
//

import Foundation

final class MovieDetailDataController: NSObject, MovieDetailDataProtocol {

    private let apiService: ServiceLayer

    init(apiService: ServiceLayer = ServiceLayer()) {
        self.apiService = apiService
    }

    func fetchMovieDetail(_ movieId: Int) async throws -> MovieDetailModel? {
        let request = GetMovieDetailRequest(movieId: movieId)
        return try await apiService.send(request: request)
    }

    func fetchSimilarMovies(_ movieId: Int, _ currentPage: Int) async throws -> SimilarMoviesModel? {
        let request = GetSimilarMoviesRequest(movieId: movieId, page: currentPage)
        return try await apiService.send(request: request)
    }
}
