//
//  RMEpisodeViewController.swift
//  RickAndMortyAPI
//
//  Created by Donat on 30.12.22.
//

import UIKit

/// Controller to show and search for Episodes
final class RMEpisodeViewController: UIViewController {

    private let episodeListView = RMEpisodeListView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCharacterListView()
        addSearchButton()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc private func didTapSearch() {
        print("Did TEP SURCH")
    }
    
    func configureCharacterListView() {
        view.backgroundColor = .systemBackground
        title = "Episodes"
        episodeListView.delegate = self
        view.addSubview(episodeListView)
        
        NSLayoutConstraint.activate([
            episodeListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            episodeListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            episodeListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            episodeListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
    }

}

//MARK: - EpisodeListViewDelegate
extension RMEpisodeViewController: RMEpisodeListViewDelegate {
    func rmEpisodeListView(_ characterListView: RMEpisodeListView, didSelectEpisode episode: RMEpisode) {
        // Open detail controller for that episode
        let detailVC = RMEpisodeDetailViewController(url: URL(string: episode.url))
        detailVC.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}


