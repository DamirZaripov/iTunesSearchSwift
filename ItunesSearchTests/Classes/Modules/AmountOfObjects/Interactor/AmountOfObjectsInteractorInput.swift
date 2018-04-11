//
//  AmountOfObjectsInteractorInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsInteractorInput: class {
    
    /// Date preparation
    func prepareDate()
    
    /// Save current amount of objects
    ///
    /// - Parameter index: index
    func saveAmountOfObjects(with index: Int)
    
    /// Save current search device
    ///
    /// - Parameter index: index
    func saveSearchByDevice(with index: Int)

    /// Get number of rows for amount
    func getNumberOfRowsForAmountPickerView()
    
    /// Get number of rows for device search
    func getNumberOfRowsForSearchByDevicePickerView()
    
    /// Get title of row at amount
    ///
    /// - Parameter index: index
    func getTitleOfRowAtAmountPickerView(at index: Int)
    
    /// Get title of row at device search
    ///
    /// - Parameter index: index
    func getTitleOfRowAtSearchByDevicePickerView(at index: Int)
    
    /// Get saved amount
    func getSaveAmount()
    
    /// Get saved device saerch
    func getSaveSearchByDevice()
}
