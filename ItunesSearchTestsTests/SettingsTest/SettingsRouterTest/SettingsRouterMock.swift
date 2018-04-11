//
//  SettingsRouterMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class SettingsRouterMock: SettingsRouterInput {
    
    var check = false
    
    func showMediaTypeScreen() {
        check = true
    }
    
    func showAmountOfObiectsScreen() {
        check = true
    }
    
}
