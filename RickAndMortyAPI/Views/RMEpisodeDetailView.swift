//
//  RMEpisodeDetailView.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 1.3.23.
//

import UIKit

final class RMEpisodeDetailView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
