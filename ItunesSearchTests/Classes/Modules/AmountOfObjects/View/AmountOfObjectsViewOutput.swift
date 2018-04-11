//
//  AmountOfObjectsOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsViewOutput: class {
    
    /// View preparation
    func viewIsReady()
    
    /// View will appear
    func onViewWillAppear()
    
    /// Get number of components
    ///
    /// - Parameter pickerView: for this picker view
    func getNumberOfComponents(to pickerView: EnumPickerView)
    
    /// Get number of rows in components
    ///
    /// - Parameter pickerView: for this picker view
    func getNumberOfRowsInComponent(to pickerView: EnumPickerView)
    
    /// Get title for row
    ///
    /// - Parameters:
    ///   - pickerView: for this picker view
    ///   - index: index
    func getTitleForRow(to pickerView: EnumPickerView, and index: Int)
   
    /// Selelect amount of objects
    ///
    /// - Parameter index: index
    func didSelectAmountOfObjects(at index: Int)
    
    /// Select device search
    ///
    /// - Parameter index: index
    func didSelectSearchByDevice(at index: Int)
    
}
