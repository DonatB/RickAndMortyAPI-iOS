//
//  RMCharacterInfoCollectionViewCellViewModel.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 22.2.23.
//

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    
    public let value: String
    public let title: String
    
    init(value: String, title: String) {
        self.value = value
        self.title = title
    }
}
