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
    ///   - request: Reuqest instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
