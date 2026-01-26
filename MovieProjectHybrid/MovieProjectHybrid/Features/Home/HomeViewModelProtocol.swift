//
//  HomeViewModelProtocol.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 23.01.2026.
//

import Foundation

protocol HomeViewModelProtocol: ObservableObject, Hashable {

    /// State of loader
    var isLoading: Bool { get }

    /// State of screen
    var viewState: ViewState { get }

    /// Movie list for carousel
    var nowPlayingMovies: [MovieListModel] { get }

    /// Movie list for listing
    var upcomingMovies: [MovieListModel] { get }

    /// Movie list for search results
    var searchResults: [MovieListModel] { get }

    /// Search string of movie searching
    var queryString: String { get set }

    /// The method which triggers when screen appears
    func onAppear()

    /// The method which triggers when screen refreshes
    func refresh()

    /// The method which triggers when screen scrolled down (pagination)
    func loadMoreMovies() async

    /// The method for routing movie detail screen
    func routeToMovieDetail(_ movie: MovieListModel)
}
