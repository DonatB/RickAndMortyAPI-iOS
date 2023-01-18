//
//  RMCharacterStatus.swift
//  RickAndMortyAPI
//
//  Created by Donat on 2.1.23.
//

import Foundation


enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
