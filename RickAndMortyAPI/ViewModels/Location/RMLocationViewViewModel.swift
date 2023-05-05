//
//  RMLocationViewViewModel.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 4.5.23.
//

import Foundation

final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = []
    
    //location response info
    
    private var cellViewModels: [String] = []
    
    //MARK: - Init
    
    init() {}
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationRequest, expecting: String.self) { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
