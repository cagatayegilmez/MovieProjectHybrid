//
//  ServiceLayer+Async.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

extension ServiceLayer {

    /// Minimal async adapter to use the existing completion-based `ServiceLayer` from Swift Concurrency.
    func send<T: APIRequest>(request: T, canRetry: Bool = true) async throws -> T.Response {
        try await withCheckedThrowingContinuation { continuation in
            self.send(request: request, canRetry: canRetry) { result in
                continuation.resume(with: result)
            }
        }
    }
}
