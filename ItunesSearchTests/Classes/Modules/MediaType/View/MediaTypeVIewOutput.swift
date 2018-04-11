//
//  MediaTypeOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeViewOutput: class {
    
    /// View preparation
    func viewIsReady()
    
    /// View will appear
    func onViewWillAppear()
    
    /// Get number of components
    func getNumberOfComponents()
    
    /// Get number of rows in components
    func getNumberOfRowsInComponent()
    
    /// Get title for row
    ///
    /// - Parameter index: index
    func getTitleForRow(index: Int)
    
    /// Select media type
    ///
    /// - Parameter index: index
    func didSelectMediaType(at index: Int)
    
}
