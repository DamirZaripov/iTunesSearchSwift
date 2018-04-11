//
//  MediaTypePresenterMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class MediaTypePresenterMock: MediaTypeViewOutput, MediaTypeInteractorOutput {
    
    var viewIsReadyCheck = false
    var onViewWillAppearCheck = false
    var getNumberOfComponentsCheck = false
    var getNumberOfRowsInComponentCheck = false
    var getTitleForRowCheck = false
    var didSelectMediaTypeCheck = false
    
    var didFinishingGetNumberOfComponentsCheck = false
    var didFinishingGetNumberOfRowsInComponentCheck = false
    var didFinishingGetTitleForRowCheck = false
    var didFinishingGetMediaTypeCheck = false
    
    //MARK: View output
    
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
    
    //MARK: - Interactor output
    
    func didFinishingGetNumberOfComponents(with number: Int) {
        didFinishingGetNumberOfComponentsCheck = true
    }
    
    func didFinishingGetNumberOfRowsInComponent(with number: Int) {
        didFinishingGetNumberOfRowsInComponentCheck = true
    }
    
    func didFinishingGetTitleForRow(with title: String) {
        didFinishingGetTitleForRowCheck = true
    }
    
    func didFinishingGetMediaType(with index: Int) {
        didFinishingGetMediaTypeCheck = true
    }
    
    
}
