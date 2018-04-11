//
//  MediaTypeInteractorTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests
import XCTest

class MediaTypeInteractorTest: XCTestCase {
    
    var interactor: MediaTypeInteractor!
    let mediaTypeEbook = "ebook"
    
    override func setUp() {
        super.setUp()
        interactor = MediaTypeInteractor()
    }
    
    override func tearDown() {
        interactor = nil
        super.tearDown()
    }

    func testWhenInteractorGetTitleOfRowCalledThenPresenterDidFinishingGetTitleForRow(){
        //given
        let presenter = MediaTypePresenterMock()
        interactor.presenter = presenter
        interactor.mediaTypesArray.append(mediaTypeEbook)
        
        //when
        interactor.getTitleOfRow(at: 0)
        
        //then
        XCTAssertTrue(presenter.didFinishingGetTitleForRowCheck)
    }

    func testWhenInteractorSaveMediaTypeThenUserDefaultsManagerSaveMediaType() {
        //given
        let userDefaultsManager = UserDefaultsManagerMock()
        interactor.userDefaultsManager = userDefaultsManager
        interactor.mediaTypesArray.append(mediaTypeEbook)
        
        //when
        interactor.saveMediaType(with: 0)
        
        //then
        XCTAssertTrue(userDefaultsManager.saveMediaTypeCalled)
    }
    
    func testWhenInteracorGetNumberOfComponentsPresenterDidFinishingGetNumberOfComponentsCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        interactor.presenter = presenter
        
        //when
        interactor.getNumberOfComponents()
        
        //then
        XCTAssertTrue(presenter.didFinishingGetNumberOfComponentsCheck)
    }
    
    func testWhenInteractorPreepareDate() {
        //given
        
        //when
        interactor.prepareDate()
        
        //then
        XCTAssertNotNil(interactor.mediaTypesArray)
    }
    
}
