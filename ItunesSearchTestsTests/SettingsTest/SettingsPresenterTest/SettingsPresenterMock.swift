//
//  PresenterMock.swift
//  ItunesSearchTestsTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation
@testable import ItunesSearchTests

class SettingsPresenterMock: SettingsViewOutput {
    
    var check = false
    
    func didSelectSettingsRow(at indexPath: IndexPath) {
        check = true
    }
    
}
