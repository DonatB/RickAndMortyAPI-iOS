//
//  RMCharacterViewController.swift
//  RickAndMortyAPI
//
//  Created by Donat on 30.12.22.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character,
                                queryParameters: [
                                    URLQueryItem(name: "name", value: "rick"),
                                    URLQueryItem(name: "status", value: "alive")
                                ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success(_):
                break
            case .failure(_):
                break
            }
        }
    }
    

}
