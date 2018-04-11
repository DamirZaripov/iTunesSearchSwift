//
//  SearchMediaRouterInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaRouterInput: class {
    
    /// Show page in Safari
    ///
    /// - Parameter url: page url
    func showPage(with url: URL)
}
