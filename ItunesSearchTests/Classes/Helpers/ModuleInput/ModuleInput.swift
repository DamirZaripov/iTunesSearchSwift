//
//  ModuleInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol ModuleInput: class {
    
    /// Setting data to input module
    ///
    /// - Parameter data: anything data
    func setData(_ data: Any?)
}
