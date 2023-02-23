//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 22.2.23.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    private let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}
