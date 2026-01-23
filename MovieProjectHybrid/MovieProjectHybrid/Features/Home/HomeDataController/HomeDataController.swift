//
//  HomeDataController.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import Foundation

final class HomeDataController: NSObject, HomeDataProtocol {

    let apiservice = ServiceLayer()

    func fetchNowPlayingList() async throws -> MovieModel? {
        let request = GetNowPlayingListRequest()
        return try await apiservice.send(request: request)
    }

    func fetchUpcomingList(_ currentPage: Int) async throws -> MovieModel? {
        let request = GetUpcomingListRequest(page: currentPage)
        return try await apiservice.send(request: request)
    }

    func searchInMovies(_ query: String, _ currentPage: Int) async throws -> SearchModel? {
        let request = GetSearchResultsRequest(query: query, page: currentPage)
        return try await apiservice.send(request: request)
    }
}
