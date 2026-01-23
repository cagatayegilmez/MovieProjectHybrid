//
//  HomeDataProtocol.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import SwiftUI

protocol HomeDataProtocol {

    /// Fetches now playing banner list
    ///
    /// - Returns: Movie list of carousel
    func fetchNowPlayingList() async throws -> MovieModel?

    /// Fetches upcoming movie list
    ///
    /// - Parameter currentPage: Page number for pagination
    /// - Returns: Movie list of table
    func fetchUpcomingList(_ currentPage: Int) async throws -> MovieModel?

    /// Searches inside movies
    ///
    /// - Parameters:
    ///   - query: Querry string of searchig
    ///   - currentPage: Page number for pagination
    /// - Returns: Loyalty benefit detail response.
    func searchInMovies(_ query: String, _ currentPage: Int) async throws -> SearchModel?
}
