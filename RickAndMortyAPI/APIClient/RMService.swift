//
//  RMService.swift
//  RickAndMortyAPI
//
//  Created by Donat on 30.12.22.
//

import Foundation

/// Primary API service object to get the "Rick and Morty" data.
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    //Privatise the initialiser, so we are "forced" to use the shared instance of the singleton class.
    /// Privatised constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
