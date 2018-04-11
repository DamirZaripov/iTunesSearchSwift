//
//  SettingsRouterTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import XCTest
@testable import ItunesSearchTests

class SettingsRouterTest: XCTestCase {
    
    var settingsRouter: SettingsRouter!
    
    override func setUp() {
        super.setUp()
        settingsRouter = SettingsRouter()
    }
    
    override func tearDown() {
        settingsRouter = nil
        super.tearDown()
    }
    
    func testShowMediaScreen() {
        //given
        let view: SettingsView = UIStoryboard(storyboard: .main).instantiateViewController()
        UIApplication.shared.keyWindow?.rootViewController = view
        settingsRouter.view = view
        
        //when
        settingsRouter.showMediaTypeScreen()
        
        //then
        XCTAssertNotNil(view.presentedViewController)
        XCTAssertTrue(view.presentedViewController is MediaTypeView)
    }
    
    func testShowAmountOfObiectsScreen() {
        //given
        let view: SettingsView = UIStoryboard(storyboard: .main).instantiateViewController()
        UIApplication.shared.keyWindow?.rootViewController = view
        settingsRouter.view = view
        
        //when
        settingsRouter.showAmountOfObiectsScreen()
        
        //then
        XCTAssertNotNil(view.presentedViewController)
        XCTAssertTrue(view.presentedViewController is AmountOfObjectsView)
    }
}
