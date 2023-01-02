//
//  RMCharacterGender.swift
//  RickAndMortyAPI
//
//  Created by Donat on 2.1.23.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // ('Female', 'Male', 'Genderless' or 'unknown').
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
