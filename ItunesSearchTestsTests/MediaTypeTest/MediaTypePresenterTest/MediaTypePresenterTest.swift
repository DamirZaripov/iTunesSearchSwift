//
//  MediaTypePresenterTest.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests
import XCTest

class MediaTypePresenterTest: XCTestCase {
    
    var presenter: MediaTypePresenter!
    
    override func setUp() {
        super.setUp()
        presenter = MediaTypePresenter()
    }
    
    override func tearDown() {
        presenter = nil
        super.tearDown()
    }

    func testWhenPresenterViewIsReadyCalledThenPrepareDateCalled() {
        //given
        let view = MediaTypeViewMock()
        let interactor = MediaTypeInteractorMock()
        presenter.view = view
        presenter.interactor = interactor
        
        //when
        presenter.viewIsReady()
        
        //then
        XCTAssertTrue(interactor.prepareDateCheck)
    }
    
    func testWhenPresenterOnViewWillAppearCalledThenGetSaveMediaTypeCalled() {
        //given
        let interactor = MediaTypeInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.onViewWillAppear()
        
        //then
        XCTAssertTrue(interactor.getSaveMediaTypeCheck)
    }
    
    func testWhenPresenterDidSelectMediaTypeCalledThenInteractirSaveMediaTypeCalled() {
        //given
        let interactor = MediaTypeInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.didSelectMediaType(at: 0)
        
        //then
        XCTAssertTrue(interactor.saveMediaTypeCheck)
    }
    
    func testWhenGetNumberOfComponentsCalledThenInteractorGetNumberOfRowsCalled() {
        //given
        let interactor = MediaTypeInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.getNumberOfRowsInComponent()
        
        //then
        XCTAssertTrue(interactor.getNumberOfRowsCheck)
    }

    func testWhenPresenterGetTitleFowRowCalledThenInteractorGetTitlOfRowCalled() {
        //given
        let interactor = MediaTypeInteractorMock()
        presenter.interactor = interactor
        
        //when
        presenter.getTitleForRow(index: 0)
        
        //then
        XCTAssertTrue(interactor.getTitleOfRowCheck)
    }

 
}
