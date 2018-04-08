//
//  AmountOfObjectsInteractorInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsInteractorInput: class {
    
    func prepareDate()
    
    func saveAmountOfObjects(with index: Int)
    
    func saveSearchByDevice(with index: Int)

    func getNumberOfRowsForAmountPickerView()
    
    func getNumberOfRowsForSearchByDevicePickerView()
    
    func getTitleOfRowAtAmountPickerView(at index: Int)
    
    func getTitleOfRowAtSearchByDevicePickerView(at index: Int)
    
    func getSaveAmount()
    
    func getSaveSearchByDevice()
}
