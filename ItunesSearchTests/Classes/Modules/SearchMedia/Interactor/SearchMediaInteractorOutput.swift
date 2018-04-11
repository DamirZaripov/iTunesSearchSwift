//
//  SearchMediaInteractorOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaInteractorOutput: class {
 
    /// Finishing search
    ///
    /// - Parameter result: result
    func didFinishingLoadSearchMediaResult(with result: [SearchMediaCellModel])
    
}
