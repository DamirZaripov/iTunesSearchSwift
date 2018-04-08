//
//  AmountOfObjectsView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class AmountOfObjectsView: UIViewController, AmountOfObjectsViewInput {
    
    @IBOutlet weak var amountOfObjectsPickerView: UIPickerView!
    @IBOutlet weak var searchByDevicesPickerView: UIPickerView!
    @IBOutlet weak var saveSettingsButton: UIButton!
    
    var presenter: AmountOfObjectsViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveSettingsButtonsPressed(_ sender: UIButton) {
        
    }
    
}
