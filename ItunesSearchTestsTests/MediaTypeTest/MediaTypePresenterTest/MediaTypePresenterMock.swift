//
//  MediaTypePresenterMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class MediaTypePresenterMock: MediaTypeViewOutput {
    
    var viewIsReadyCheck = false
    var onViewWillAppearCheck = false
    var getNumberOfComponentsCheck = false
    var getNumberOfRowsInComponentCheck = false
    var getTitleForRowCheck = false
    var didSelectMediaTypeCheck = false
    
    func viewIsReady() {
        viewIsReadyCheck = true
    }
    
    func onViewWillAppear() {
        onViewWillAppearCheck = true
    }
    
    func getNumberOfComponents() {
        getNumberOfComponentsCheck = true
    }
    
    func getNumberOfRowsInComponent() {
        getNumberOfRowsInComponentCheck = true
    }
    
    func getTitleForRow(index: Int) {
        getTitleForRowCheck = true
    }
    
    func didSelectMediaType(at index: Int) {
        didSelectMediaTypeCheck = true
    }
    
}
