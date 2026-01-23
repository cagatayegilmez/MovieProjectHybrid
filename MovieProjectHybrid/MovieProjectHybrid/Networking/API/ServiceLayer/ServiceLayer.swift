//
//  ServiceLayer.swift
//  MovieProjectHybrid
//
//  Created by Çağatay Eğilmez on 20.01.2026.
//

import Foundation

final class ServiceLayer {

    private let session: URLSession
    private let decoder: JSONDecoder

    init(session: URLSession = .shared, decoder: JSONDecoder = JSONDecoder()) {
        self.session = session
        self.decoder = decoder
    }

    func send<T: APIRequest>(request: T,
                             canRetry: Bool = true,
                             completion: @escaping (Result<T.Response, Error>) -> Void) {
#if DEBUG
        print("Request: \(request.asURLRequest())")
        print("🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀")
#endif
        let dataTask = session.dataTask(with: request.asURLRequest()) { [weak self] data, response, error in
            DispatchQueue.main.async {
                guard let self else {
                    return
                }

                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(ServiceError.noHttpResponse))
                    return
                }

#if DEBUG
                print("🟢🟢🟢🟢🟢🟢🟢🟢🟢🟢")
                print("HTTP Status: \(httpResponse.statusCode)")
#endif

                switch httpResponse.statusCode {
                case 200..<300:
                    guard let data else {
                        completion(.failure(ServiceError.noData))
                        return
                    }

                    guard let dataString = String(data: data, encoding: .utf8), !dataString.isEmpty else {
                        if let emptyResponse = EmptyResponse() as? T.Response {
                            completion(.success(emptyResponse))
                        }
                        return
                    }

#if DEBUG
                    print(dataString)
#endif
                    do {
                        let baseResponse = try self.decoder.decode(T.Response.self, from: data)
                        completion(.success(baseResponse))
                    } catch {
#if DEBUG
                        print(response?.url?.absoluteString ?? "Last URL")
                        print("Decoding Error --> \(T.Response.self)")
                        print(error)
#endif
                        completion(.failure(ServiceError.decoding(error)))
                    }
                default:
                    guard let data = data,
                          let errorObject = try? self.decoder.decode(ServiceErrorObject.self,
                                                                     from: data).errorMessages.first else {
                        completion(.failure(ServiceError.fail(httpResponse.statusCode)))
                        return
                    }

#if DEBUG
                    print("🔴🔴🔴🔴🔴🔴🔴🔴🔴🔴")
                    print(errorObject.message)
#endif
                    completion(.failure(ServiceError.customError(httpCode: httpResponse.statusCode,
                                                                 errorCode: errorObject.code)))
                }
            }
        }
        dataTask.resume()
    }
}

enum ServiceError: Error {

    case invalidRefreshToken
    case noHttpResponse
    case noData
    case socialMediaReauth
    case fail(Int)
    case decoding(Error)
    case customError(httpCode: Int, errorCode: Int)
}

extension ServiceError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .customError(let message, let code):
            return NSLocalizedString(message.description, comment: "Error code:\(code)")
        default:
            return NSLocalizedString("Something went wrong.", comment: "")
        }
    }
}
struct ServiceErrorObject: Decodable {
    let errorMessages: [ErrorMessageObject]

    struct ErrorMessageObject: Decodable {
        let message: String
        let code: Int
    }
}

public struct APIBaseResponse<T: Decodable>: Decodable {
    public let data: T
}
