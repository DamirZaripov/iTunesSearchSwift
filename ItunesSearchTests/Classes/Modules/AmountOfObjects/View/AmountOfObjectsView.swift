//
//  AmountOfObjectsView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class AmountOfObjectsView: UIViewController, AmountOfObjectsViewInput {
  
    @IBOutlet weak var searchByDevicesPickerView: UIPickerView!
    @IBOutlet weak var amountOfObjectsPickerView: UIPickerView!
    
    var currentNumberOfComponents: Int?
    var currentTitleForRow: String?
    var currentNumberOfRowsInComponent: Int?
    var currentSelectRow: Int?
    
    let amountOfObjectsPickerViewTag = 0
    let searchByDevicesPickerViewTag = 1
    let zeroIndexIdentifier = 0
   
    var presenter: AmountOfObjectsViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.onViewWillAppear()
    }
    
    //MARK: - View Input
    
    func setTagsToPickerViews() {
        searchByDevicesPickerView.tag = searchByDevicesPickerViewTag
        amountOfObjectsPickerView.tag = amountOfObjectsPickerViewTag
    }
    
    func preparePickerView() {
        searchByDevicesPickerView.dataSource = self
        searchByDevicesPickerView.delegate = self
        amountOfObjectsPickerView.dataSource = self
        amountOfObjectsPickerView.delegate = self
    }
    
    func setNumberOfComponents(with number: Int) {
        currentNumberOfComponents = number
    }
    
    func setTitleForRow(with title: String) {
        currentTitleForRow = title
    }
    
    func setNumberOfRowsInComponent(with number: Int) {
        currentNumberOfRowsInComponent = number
    }
    
    func set(selectedRowAtSearchByDevices indexOfRow: Int) {
        searchByDevicesPickerView.selectRow(indexOfRow, inComponent: zeroIndexIdentifier, animated: true)
    }
    
    func set(selectedRowAtAmount indexOfRow: Int) {
        amountOfObjectsPickerView.selectRow(indexOfRow, inComponent: zeroIndexIdentifier, animated: true)
    }
    
}

extension AmountOfObjectsView: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView.tag == amountOfObjectsPickerViewTag) {
            presenter.getNumberOfRowsInComponent(to: .amountOfObjectsPickerView)
        } else if (pickerView.tag == searchByDevicesPickerViewTag) {
            presenter.getNumberOfRowsInComponent(to: .searchByDevicesPickerView)
        }
        
        return currentNumberOfRowsInComponent ?? 0
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if (pickerView.tag == amountOfObjectsPickerViewTag) {
            presenter.getNumberOfComponents(to: .amountOfObjectsPickerView)
        } else if (pickerView.tag == searchByDevicesPickerViewTag) {
            presenter.getNumberOfComponents(to: .searchByDevicesPickerView)
        }
        
        return currentNumberOfComponents ?? 0
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (pickerView.tag == amountOfObjectsPickerViewTag) {
            presenter.getTitleForRow(to: .amountOfObjectsPickerView, and: row)
        } else if (pickerView.tag == searchByDevicesPickerViewTag) {
            presenter.getTitleForRow(to: .searchByDevicesPickerView, and: row)
        }
        
        return currentTitleForRow
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView.tag == amountOfObjectsPickerViewTag) {
            presenter.didSelectAmountOfObjects(at: row)
        } else if (pickerView.tag == searchByDevicesPickerViewTag) {
            presenter.didSelectSearchByDevice(at: row)
        }
    }

}
