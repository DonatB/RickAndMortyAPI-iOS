//
//  Extensions.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 18.1.23.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
