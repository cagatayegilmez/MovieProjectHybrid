//
//  SanityCheck.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

enum NetworkingSanityCheck {

    static func run() async {
        #if DEBUG
        guard ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] == nil else {
            return
        }

        do {
            let api = ServiceLayer()
            let response = try await api.send(request: GetNowPlayingListRequest())
            print("SanityCheck: now_playing count = \(response.results.count)")
        } catch {
            print("SanityCheck failed: \(error)")
        }
        #endif
    }
}
