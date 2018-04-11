//
//  CellPressedDelegate.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 11.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol CellPressedDelegate {
    
    /// Show page
    ///
    /// - Parameter url: page url
    func showPage(with url: URL)
    
}
