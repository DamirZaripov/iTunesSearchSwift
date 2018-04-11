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
        let settingsRouter = SettingsRouterMock()
        settingsPresenter.router = settingsRouter
        
        //when
        let indexPath = IndexPath(row: 1, section: 0)
        settingsPresenter.didSelectSettingsRow(at: indexPath)
        
        //then
        XCTAssertTrue(settingsRouter.check)
        
    }
    
    func testWhenDidSelectSettingsRowThenRouterShowAmountOfObiectsScreenCalled() {
        //given
        let settingsRouter = SettingsRouterMock()
        settingsPresenter.router = settingsRouter
        
        //when
        let indexPath = IndexPath(row: 0, section: 0)
        settingsPresenter.didSelectSettingsRow(at: indexPath)
        
        //then
        XCTAssertTrue(settingsRouter.check)
    }

}


