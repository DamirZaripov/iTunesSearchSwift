
//
//  SearchMediaInteractor.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SearchMediaInteractor: SearchMediaInteractorInput {
    
    weak var presenter: SearchMediaInteractorOutput!
    var apiManager: APIManager!
    var userDefaultManager: UserDefaultsManager!
    
    func getSearchResult(with term: String) {
        
        let limit = userDefaultManager.getAmountOfObjects()
        let limitString = String(limit)
        guard let mediaType = userDefaultManager.getMediaType(), let deviceType = userDefaultManager.getSearchByDevice() else { return }
        
        let mediaTypeString = mediaType.rawValue
        let deviceTypeString = deviceType.rawValue
        
        apiManager.getMedia(term: term, limit: limitString, mediaType: mediaTypeString, deviceType: deviceTypeString) { [weak self] (result) in
            
            guard let strongSelf = self else { return }
            
            DispatchQueue.main.async {
                strongSelf.convertModels(with: result)
            }
        }
    }
    
    private func convertModels(with results: SearchMediaResult) {
        
        var mediaArray = [SearchMediaCellModelImpl]()
        
        for media in results.results {
            let newMedia = SearchMediaCellModelImpl(author: media.artistName, description: media.shortDescription, imageURL: media.artworkUrl60, price: media.trackPrice, viewURL: media.trackViewUrl, name: media.trackName)
            mediaArray.append(newMedia)
        }
        presenter.didFinishingLoadSearchMediaResult(with: mediaArray)
    }
}
