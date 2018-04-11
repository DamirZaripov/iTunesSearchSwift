//
//  MediaTypeInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeViewInput: class {
    
    /// Picker view preparation
    func preparePickerView()
    
    /// Set number of components
    ///
    /// - Parameter number: number
    func setNumberOfComponents(with number: Int)
    
    /// Set title to picker view
    ///
    /// - Parameter title: title
    func setTitleForRow(with title: String)
    
    /// Set number of rows in component
    ///
    /// - Parameter number: number
    func setNumberOfRowsInComponent(with number: Int)
    
    /// Set selected row
    ///
    /// - Parameter indexOfRow: index
    func setSelectedRow( indexOfRow: Int)
}
