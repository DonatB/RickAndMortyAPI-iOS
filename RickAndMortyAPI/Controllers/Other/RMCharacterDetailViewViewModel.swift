//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 20.1.23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
    
//    public func fetchCharacterData() {
//        print(character.url)
//        guard let url = requestUrl,
//              let request = RMRequest(url: url) else {
//            return
//        }
//
//        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
//            switch result {
//            case .success(let success):
//                print(String(describing: success))
//            case .failure(let failure):
//                print(String(describing: failure))
//            }
//        }
//    }
    
}
