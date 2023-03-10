//
//  RMGetAllEpisodesResponse.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 10.3.23.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMEpisode]

}
