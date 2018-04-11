//
//  MediaTypeInteractorInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeInteractorInput: class {
    
    /// Date preparation
    func prepareDate()
    
    /// Save current media type
    ///
    /// - Parameter index: index
    func saveMediaType(with index: Int)
    
    /// Get number of components
    func getNumberOfComponents()
    
    /// Get number of rows
    func getNumberOfRows()
    
    /// Get title of row
    ///
    /// - Parameter index: index
    func getTitleOfRow(at index: Int)
    
    /// Get save media type
    func getSaveMediaType()
}
