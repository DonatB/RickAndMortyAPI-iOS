//
//  RMLocationViewViewModel.swift
//  RickAndMortyAPI
//
//  Created by Donat Bajrami on 4.5.23.
//

import Foundation

protocol RMLocationViewViewModelDelegate: AnyObject {
    func didFetchInitialLocations()
}

final class RMLocationViewViewModel {
    
    weak var delegate: RMLocationViewViewModelDelegate?
    
    private var locations: [RMLocation] = [] {
        didSet {
            for location in locations {
                let cellViewModel = RMLocationTableViewCellViewModel(location: location)
                if !cellViewModels.contains(cellViewModel) {
                    cellViewModels.append(cellViewModel)
                }
            }
        }
    }
    
    //location response info
    private var apiInfo: RMGetLocationsResponse.Info?
    
    private(set) var cellViewModels: [RMLocationTableViewCellViewModel] = []
    
    //MARK: - Init
    
    init() {}
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationRequest, expecting: RMGetLocationsResponse.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let model):
                self.apiInfo = model.info
                self.locations = model.results
                DispatchQueue.main.async {
                    self.delegate?.didFetchInitialLocations()
                }
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
