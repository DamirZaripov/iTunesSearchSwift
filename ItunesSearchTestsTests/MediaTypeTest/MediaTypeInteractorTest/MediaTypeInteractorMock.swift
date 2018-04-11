//
//  MediaTypeInteractorMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class MediaTypeInteractorMock: MediaTypeInteractorInput {
    
    var prepareDateCheck = false
    var saveMediaTypeCheck = false
    var getNumberOfRowsCheck = false
    var getTitleOfRowCheck = false
    var getSaveMediaTypeCheck = false
    var getNumberOfComponentsCheck = false
    
    func prepareDate() {
        prepareDateCheck = true
    }
    
    func saveMediaType(with index: Int) {
        saveMediaTypeCheck = true
    }
    
    func getNumberOfRows() {
        getNumberOfRowsCheck = true
    }
    
    func getTitleOfRow(at index: Int) {
        getTitleOfRowCheck = true
    }
    
    func getSaveMediaType() {
        getSaveMediaTypeCheck = true
    }
    
    func getNumberOfComponents() {
        getNumberOfComponentsCheck = true
    }
    
}
