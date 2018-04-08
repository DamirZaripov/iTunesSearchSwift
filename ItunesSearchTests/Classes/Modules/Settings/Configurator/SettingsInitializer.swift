//
//  SettingsInitializer.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SettingsInitializer: NSObject {
    
    @IBOutlet weak var view: SettingsView!
    
    override func awakeFromNib() {
        let configurator = SettingsConfigurator()
        configurator.setupModule(with: view)
    }
    
}
