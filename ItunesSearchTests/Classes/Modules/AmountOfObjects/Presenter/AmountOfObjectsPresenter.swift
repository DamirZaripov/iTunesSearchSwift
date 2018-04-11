//
//  AmountOfObjectsPresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class AmountOfObjectsPresenter: AmountOfObjectsViewOutput, AmountOfObjectsInteractorOutput {
   
    weak var view: AmountOfObjectsViewInput!
    var interactor: AmountOfObjectsInteractorInput!
    var router: AmountOfObjectsRouterInput!
    
    private let numberOfComponents = 1
    
    // View Output
    
    func viewIsReady() {
        interactor.prepareDate()
        view.setTagsToPickerViews()
        view.preparePickerView()
    }
    
    func onViewWillAppear() {
        interactor.getSaveAmount()
        interactor.getSaveSearchByDevice()
    }
    
    func getNumberOfComponents(to pickerView: EnumPickerView) {
        if (pickerView == .amountOfObjectsPickerView) {
            view.setNumberOfComponents(with: numberOfComponents)
        } else if (pickerView == .searchByDevicesPickerView){
            view.setNumberOfComponents(with: numberOfComponents)
        }
    }
    
    func getNumberOfRowsInComponent(to pickerView: EnumPickerView) {
        if (pickerView == .amountOfObjectsPickerView) {
            interactor.getNumberOfRowsForAmountPickerView()
        } else if (pickerView == .searchByDevicesPickerView){
            interactor.getNumberOfRowsForSearchByDevicePickerView()
        }
    }
    
    func getTitleForRow(to pickerView: EnumPickerView, and index: Int) {
        if (pickerView == .amountOfObjectsPickerView) {
            interactor.getTitleOfRowAtAmountPickerView(at: index)
        } else if (pickerView == .searchByDevicesPickerView){
            interactor.getTitleOfRowAtSearchByDevicePickerView(at: index)
        }
    }
    
    func didSelectAmountOfObjects(at index: Int) {
        interactor.saveAmountOfObjects(with: index)
    }
    
    func didSelectSearchByDevice(at index: Int) {
        interactor.saveSearchByDevice(with: index)
    }
    
    // Interactor Output
    
    func didFinishingGetNumberOfRowsInComponent(with number: Int) {
        view.setNumberOfRowsInComponent(with: number)
    }
    
    func didFinishingGetTitleForRow(with title: String) {
        view.setTitleForRow(with: title)
    }
    
    func didFinishingGetAmountFromUserDefaults(with index: Int) {
        view.set(selectedRowAtAmount: index)
    }
    
    func didFinishingGetSearchByDeviceFromUserDefaults(with index: Int) {
        view.set(selectedRowAtSearchByDevices: index)
    }
    
}
