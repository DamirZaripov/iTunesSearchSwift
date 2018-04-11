//
//  MediaTypeViewTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests
import XCTest

class MediaTypeViewTest: XCTestCase {
    
    var view: MediaTypeView!
    
    override func setUp() {
        super.setUp()
        view = MediaTypeView()
    }
    
    override func tearDown() {
        view = nil
        super.tearDown()
    }
    
    func testWhenViewDidPresenterViewIsReadyCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        view.viewDidLoad()
        
        //then
        XCTAssertTrue(presenter.viewIsReadyCheck)
    }
    
    func testWhenViewWillAppearThenPresenterViewIsReadyCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        view.viewWillAppear(true)
        
        //then
        XCTAssertTrue(presenter.onViewWillAppearCheck)
    }
    
    func testWhenViewNumberOfComponentsThenPresenterGetNumberOfComponentsCheckCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        let pickerView = UIPickerView()
        view.numberOfComponents(in: pickerView)
        
        //then
        XCTAssertTrue(presenter.getNumberOfComponentsCheck)
    }
    
    func testWhenPickerViewNumberOfRowsInComponentThenPresenterGetNumberOfRowsInComponentCheckCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        let pickerView = UIPickerView()
        view.pickerView(pickerView, numberOfRowsInComponent: 0)
        
        //then
        XCTAssertTrue(presenter.getNumberOfRowsInComponentCheck)
    }
    
    func testWhenPickerViewTitleForRowThenPresenterGetTitleForRowCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        let pickerView = UIPickerView()
        view.pickerView(pickerView, titleForRow: 0, forComponent: 0)
        
        //then
        XCTAssertTrue(presenter.getTitleForRowCheck)
    }
    
    func testWhenPickerViewDidSelectRowThenPresenterDidSelectMediaTypeCalled() {
        //given
        let presenter = MediaTypePresenterMock()
        view.presenter = presenter
        
        //when
        let pickerView = UIPickerView()
        view.pickerView(pickerView, didSelectRow: 0, inComponent: 0)
        
        //then
        XCTAssertTrue(presenter.didSelectMediaTypeCheck)
    }

    
}
