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
    
    override func setUp() {
        super.setUp()
        interactor = MediaTypeInteractor()
    }
    
    override func tearDown() {
        interactor = nil
        super.tearDown()
    }
    
}
