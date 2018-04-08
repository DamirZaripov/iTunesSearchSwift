//
//  AmountOfObjectsRouterInitializer.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class AmountOfObjectsInitializer: NSObject {
    
    @IBOutlet weak var view: AmountOfObjectsView!
    
    override func awakeFromNib() {
        let configurator = AmountOfObjectsConfigurator()
        configurator.setupModule(with: view)
    }
    
}
