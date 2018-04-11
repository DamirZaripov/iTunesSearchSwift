//
//  UserDefaultsManagerMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class UserDefaultsManagerMock: UserDefaultsManager {

    var savedMediaType: MediaTypes?
    var savedAmountOfObjects = 0
    var savedSearchByDecice: SearchByDevice?
    
    var saveAmountOfObjectsCalled = false
    var saveMediaTypeCalled = false
    var saveSearchBuDeviceCalled = false
    
    
    func getMediaType() -> MediaTypes? {
        return savedMediaType
    }
    
    func getAmountOfObjects() -> Int {
        return savedAmountOfObjects
    }
    
    func getSearchByDevice() -> SearchByDevice? {
        return savedSearchByDecice
    }

    func save(mediaType: MediaTypes) {
        savedMediaType = mediaType
        saveMediaTypeCalled = true
    }
   
    func save(amountOfObjects: Int) {
        savedAmountOfObjects = amountOfObjects
        saveAmountOfObjectsCalled = true
    }
    
    func save(searchByDevice: SearchByDevice) {
        savedSearchByDecice = searchByDevice
        saveSearchBuDeviceCalled = true
    }
    
    
}
