//
//  SettingsPresenterTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import XCTest
@testable import ItunesSearchTests

class SettingsPresenterTest: XCTestCase {
    
    var settingsPresenter: SettingsPresenter!
    
    override func setUp() {
        super.setUp()
        settingsPresenter = SettingsPresenter()
    }
    
    override func tearDown() {
        settingsPresenter = nil
        super.tearDown()
    }
    
    func testWhenDidSelectSettingsRowThenRouterShowMediaTypeScreenCalled() {
        //given
        let settingsRouter = RouterMock()
        
        //when
        
        //then
    }
    
}

class RouterMock: SettingsRouterInput {
    
    var check = false
    
    func showMediaTypeScreen() {
        check = true
    }
    
    func showAmountOfObiectsScreen() {
        check = true
    }
    
}
