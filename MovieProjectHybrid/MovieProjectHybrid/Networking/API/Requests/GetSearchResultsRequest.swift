//
//  GetSearchResultsRequest.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

struct GetSearchResultsRequest: APIRequest {

    typealias Response = SearchModel

    var headers: [String: String]?
    var baseUrl: URL = Environment.rootURL
    let method: HTTPMethodType = .get
    var path: String {
        "search/movie"
    }
    var queryParameters: [URLQueryItem] {
        [
            URLQueryItem(name: "api_key", value: Environment.apiKey),
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "page", value: "\(String(describing: page))")
        ]
    }
    var query: String!
    var page: Int!
}
