//
//  SettingsViewTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import XCTest
@testable import ItunesSearchTests

class SettingsViewTest: XCTestCase {
    
    var settingsView: SettingsView!
    
    override func setUp() {
        super.setUp()
        settingsView = SettingsView()
    }
    
    override func tearDown() {
        settingsView = nil
        super.tearDown()
    }
    
    func testWhenTableDidSelectRowThenPresenterDidSelectSettingsRowCalled() {
        //given
        let settingsPresenter = SettingsPresenterMock()
        settingsView.presenter = settingsPresenter
        let tableView = UITableView()
        let indexPath = IndexPath(row: 0, section: 0)

        //when
        settingsView.tableView(tableView, didSelectRowAt: indexPath)

        //then
        XCTAssertTrue(settingsPresenter.check)
    }

}


