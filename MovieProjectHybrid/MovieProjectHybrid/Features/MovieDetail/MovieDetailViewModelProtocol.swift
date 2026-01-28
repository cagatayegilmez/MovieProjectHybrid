//
//  MovieDetailViewModelProtocol.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 26.01.2026.
//

import Foundation

protocol MovieDetailViewModelProtocol: ObservableObject, Hashable {

    /// State of loader
    var isLoading: Bool { get }

    /// State of screen
    var viewState: ViewState { get }

    /// Detail of selected movie
    var movieDetail: MovieDetailModel? { get }

    /// Detail of selected movie
    var similarMovies: [SimilarMoviesListModel] { get }

    /// The method which triggers when screen appears
    func onAppear()
}
