//
//  GetMovieDetailRequest.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

struct GetMovieDetailRequest: APIRequest {

    typealias Response = MovieDetailModel

    var headers: [String: String]?
    var baseUrl: URL = Environment.rootURL
    let method: HTTPMethodType = .get
    var path: String {
        "movie/\(String(describing: movieId ?? 0))"
    }
    var queryParameters: [URLQueryItem] {
        [URLQueryItem(name: "api_key", value: Environment.apiKey)]
    }
    var movieId: Int!
}
