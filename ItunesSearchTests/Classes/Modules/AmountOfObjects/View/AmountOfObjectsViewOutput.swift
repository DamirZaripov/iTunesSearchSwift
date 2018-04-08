//
//  AmountOfObjectsOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsViewOutput: class {
    
    func viewIsReady()
    
    func onViewWillAppear()
    
    func getNumberOfComponents(to pickerView: EnumPickerView)
    
    func getNumberOfRowsInComponent(to pickerView: EnumPickerView)
    
    func getTitleForRow(to pickerView: EnumPickerView, and index: Int)
   
    func didSelectAmountOfObjects(at index: Int)
    
    func didSelectSearchByDevice(at index: Int)
    
}
