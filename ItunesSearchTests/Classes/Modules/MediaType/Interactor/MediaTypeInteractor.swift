//
//  MediaTypeInteractor.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class MediaTypeInteractor: MediaTypeInteractorInput {
   
    weak var presenter: MediaTypeInteractorOutput!
    var userDefaultsManager: UserDefaultsManager!
    var mediaTypesArray = [String]()
    let numberOfComponents = 1
    
    func prepareDate() {
        let mediaTypesArray = MediaTypes.allValues
        for index in mediaTypesArray {
            self.mediaTypesArray.append(index.rawValue)
        }
    }
    
    func saveMediaType(with index: Int) {
        let mediaTypeTitle = mediaTypesArray[index]
        guard let mediaType = MediaTypes(rawValue: mediaTypeTitle) else { return }
        userDefaultsManager.save(mediaType: mediaType)
    }
    
    func getNumberOfComponents() {
        presenter.didFinishingGetNumberOfComponents(with: numberOfComponents)
    }
    
    func getNumberOfRows() {
        presenter.didFinishingGetNumberOfRowsInComponent(with: mediaTypesArray.count)
    }
    
    func getTitleOfRow(at index: Int) {
        let title = "\(mediaTypesArray[index])"
        presenter.didFinishingGetTitleForRow(with: title)
    }
    
    func getSaveMediaType() {
        guard let mediaType = userDefaultsManager.getMediaType() else { return }
        let mediaTypeTitle = mediaType.rawValue
        guard let index = mediaTypesArray.index(of: mediaTypeTitle) else { return }
        presenter.didFinishingGetMediaType(with: index)
    }
    
}
