//
//  SearchModel.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

struct SearchModel: Decodable {

    let page: Int?
    let total_pages: Int?
    let results: [MovieListModel]?
}
