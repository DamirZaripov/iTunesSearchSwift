//
//  AmountOfObjectsInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsViewInput: class {
    
    /// Set tags to picker views
    func setTagsToPickerViews()
    
    /// Picker view preparation
    func preparePickerView()
    
    /// Set number of components in picker view
    ///
    /// - Parameter number: number
    func setNumberOfComponents(with number: Int)
    
    /// Set title for row in picker view
    ///
    /// - Parameter title: title
    func setTitleForRow(with title: String)
    
    /// Set number of rows in components in picker view
    ///
    /// - Parameter number: number
    func setNumberOfRowsInComponent(with number: Int)
    
    /// Set selected device search in picker view
    ///
    /// - Parameter indexOfRow: index
    func set(selectedRowAtSearchByDevices indexOfRow: Int)
    
    /// Set amount in picker view
    ///
    /// - Parameter indexOfRow: index
    func set(selectedRowAtAmount indexOfRow: Int)
    
}
