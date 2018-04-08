//
//  MediaTypeView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class MediaTypeView: UIViewController, MediaTypeViewInput {
    
    @IBOutlet weak var mediaTypePickerView: UIPickerView!
    var presenter: MediaTypeViewOutput!
    
    var currentNumberOfComponents: Int?
    var currentTitleForRow: String?
    var currentNumberOfRowsInComponent: Int?
    var currentSelectRow: Int?
    
    let zeroIndexIdentifier = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.onViewWillAppear()
    }
    
    func preparePickerView() {
        mediaTypePickerView.dataSource = self
        mediaTypePickerView.delegate = self
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
  
    func setSelectedRow(indexOfRow: Int) {
        mediaTypePickerView.selectRow(indexOfRow, inComponent: zeroIndexIdentifier, animated: true)
    }
    
}

extension MediaTypeView: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        presenter.getNumberOfComponents()
        return currentNumberOfComponents ?? 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        presenter.getNumberOfRowsInComponent()
        return currentNumberOfRowsInComponent ?? 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        presenter.getTitleForRow(index: row)
        return currentTitleForRow
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        presenter.didSelectMediaType(at: row)
    }
    
}
