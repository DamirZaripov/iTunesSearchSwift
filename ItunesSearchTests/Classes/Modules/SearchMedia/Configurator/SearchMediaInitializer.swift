//
//  SearchMediaInitializer.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SearchMediaInitializer: NSObject {
    
    @IBOutlet weak var view: SearchMediaView!
    
    override func awakeFromNib() {
        let configurator = SearchMediaConfigurator()
        configurator.setupModule(with: view)
    }
    
    
}
