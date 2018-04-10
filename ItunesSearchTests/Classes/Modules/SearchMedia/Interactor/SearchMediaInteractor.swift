
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
    
    var mediaArray = [SearchMediaCellModelImpl]()
    
    func getSearchResult(with term: String) {
        
        let limit = userDefaultManager.getAmountOfObjects()
        let limitString = String(limit)
        guard let mediaType = userDefaultManager.getMediaType(), let deviceType = userDefaultManager.getSearchByDevice() else { return }
        
        let mediaTypeString = mediaType.rawValue
        let deviceTypeString = deviceType.rawValue
        
        apiManager.getMedia(term: term, limit: limitString, mediaType: mediaTypeString, deviceType: deviceTypeString) { [weak self] (result) in
            
            guard let strongSelf = self else { return }
            let medias = strongSelf.convertModels(with: result)
            self?.presenter.didFinishingLoadSearchMediaResult(with: medias)
        }
    }
    
    private func convertModels(with results: SearchMediaResult) -> [SearchMediaCellModelImpl] {
        for media in results.results {
            let newMedia = SearchMediaCellModelImpl(author: media.artistName, description: media.shortDescription, imageURL: media.artworkUrl60, price: media.trackPrice, viewURL: media.trackViewUrl, name: media.trackName)
            mediaArray.append(newMedia)
        }
        return mediaArray
    }
}
