//
//  UserDefaultsManagerImpl.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class UserDefaultsManagerImpl: UserDefaultsManager {
    
    private let mediaTypeKey = "mediaType"
    private let amountOfObjectsKey = "amountOfObjects"
    private let searchByDeviceKey = "searchByDevice"
    
    func save(mediaType: MediaTypes) {
        UserDefaults.standard.set(mediaType.rawValue, forKey: mediaTypeKey)
    }
    
    func getMediaType() -> MediaTypes? {
        guard let mediaType = UserDefaults.standard.string(forKey: mediaTypeKey) else { return nil }
        return MediaTypes(rawValue: mediaType)
    }
    
    func save(amountOfObjects: Int) {
        UserDefaults.standard.set(amountOfObjects, forKey: amountOfObjectsKey)
    }
    
    func getAmountOfObjects() -> Int {
        return UserDefaults.standard.integer(forKey: amountOfObjectsKey)
    }
    
    func save(searchByDevice: SearchByDevice) {
        UserDefaults.standard.set(searchByDevice.rawValue, forKey: searchByDeviceKey)
    }
    
    func getSearchByDevice() -> SearchByDevice? {
        guard let searchByDevice = UserDefaults.standard.string(forKey: searchByDeviceKey) else { return nil }
        return SearchByDevice(rawValue: searchByDevice)
    }
    
}
