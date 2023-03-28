//
//  RMSearchViewViewController.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 28.3.23.
//

import UIKit

/// Configurable controller to search
class RMSearchViewViewController: UIViewController {
    
    struct Config {
        enum `Type` {
            case character
            case episode
            case location
        }
        let type: `Type`
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        title = "Search"
    }
    

}
