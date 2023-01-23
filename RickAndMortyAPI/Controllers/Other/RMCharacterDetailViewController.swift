//
//  RMCharacterDetailViewController.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 20.1.23.
//

import UIKit

/// Controller to show info about a single character
final class RMCharacterDetailViewController: UIViewController {
    private var viewModel: RMCharacterDetailViewViewModel
    
    init(viewModel: RMCharacterDetailViewViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = viewModel.title
    }


}
