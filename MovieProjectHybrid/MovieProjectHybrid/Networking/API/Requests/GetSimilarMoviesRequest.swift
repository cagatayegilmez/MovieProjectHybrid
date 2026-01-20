//
//  GetSimilarMoviesRequest.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

struct GetSimilarMoviesRequest: APIRequest {

    typealias Response = SimilarMoviesModel

    var headers: [String: String]?
    var baseUrl: URL = Environment.rootURL
    let method: HTTPMethodType = .get
    var path: String {
        "movie/\(String(describing: movieId))/similar"
    }
    var queryParameters: [URLQueryItem] {
        [
            URLQueryItem(name: "api_key", value: Environment.apiKey),
            URLQueryItem(name: "page", value: "\(String(describing: page))")
        ]
    }
    var movieId: Int!
    var page: Int!
}
