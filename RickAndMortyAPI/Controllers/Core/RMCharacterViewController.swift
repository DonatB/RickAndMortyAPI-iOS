//
//  RMCharacterViewController.swift
//  RickAndMortyAPI
//
//  Created by Donat on 30.12.22.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    private let characterListView = RMCharacterListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCharacterListView()
    }
    
    func configureCharacterListView() {
        view.backgroundColor = .systemBackground
        title = "Characters"
        characterListView.delegate = self
        view.addSubview(characterListView)
        
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            characterListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }

}

extension RMCharacterViewController: RMCharacterListViewDelegate {
    
    //MARK: - CharacterListViewDelegate
    func rmCharacterListView(_ characterListView: RMCharacterListView, didSelectCharacter character: RMCharacter) {
        // Open detail controller for that character
        let viewModel = RMCharacterDetailViewViewModel(character: character)
        let detailVC = RMCharacterDetailViewController(viewModel: viewModel)
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }
}


