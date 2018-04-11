//
//  AmountOfObjectsInteractor.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class AmountOfObjectsInteractor: AmountOfObjectsInteractorInput {
    
    weak var presenter: AmountOfObjectsInteractorOutput!
    var userDefaultsManager: UserDefaultsManager!
    
    private var numberArray = [Int]()
    private var searchByDevaiceArray = [String]()
    private let startCount = 1
    private let endCount = 200
    
    func prepareDate() {
        var numberArray = [Int]()
        for number in startCount...endCount {
            numberArray.append(number)
        }
        self.numberArray = numberArray
        
        let searchByDevaiceArray = SearchByDevice.allDevices
        for index in searchByDevaiceArray {
            self.searchByDevaiceArray.append(index.rawValue)
        }
    }
    
    func getNumberOfRowsForAmountPickerView() {
        presenter.didFinishingGetNumberOfRowsInComponent(with: numberArray.count)
    }
    
    func getNumberOfRowsForSearchByDevicePickerView() {
        presenter.didFinishingGetNumberOfRowsInComponent(with: searchByDevaiceArray.count)
    }
    
    func getTitleOfRowAtAmountPickerView(at index: Int) {
        let title = "\(numberArray[index])"
        presenter.didFinishingGetTitleForRow(with: title)
    }
    
    func getTitleOfRowAtSearchByDevicePickerView(at index: Int) {
        let title = "\(searchByDevaiceArray[index])"
        presenter.didFinishingGetTitleForRow(with: title)
    }
    
    func saveAmountOfObjects(with index: Int) {
        let amount = numberArray[index]
        userDefaultsManager.save(amountOfObjects: amount)
    }
    
    func saveSearchByDevice(with index: Int) {
        let rawValueSearchByDevice = searchByDevaiceArray[index]
        guard let searchByDevice = SearchByDevice(rawValue: rawValueSearchByDevice) else { return }
        userDefaultsManager.save(searchByDevice: searchByDevice)
    }
    
    func getSaveAmount() {
        let amount = userDefaultsManager.getAmountOfObjects()
        guard let index = numberArray.index(of: amount) else { return }
        presenter.didFinishingGetAmountFromUserDefaults(with: index)
    }
    
    func getSaveSearchByDevice() {
        guard let searchByDevice = userDefaultsManager.getSearchByDevice()?.rawValue else { return }
        guard let index = searchByDevaiceArray.index(of: searchByDevice) else { return }
        presenter.didFinishingGetSearchByDeviceFromUserDefaults(with: index)
    }
    
}
