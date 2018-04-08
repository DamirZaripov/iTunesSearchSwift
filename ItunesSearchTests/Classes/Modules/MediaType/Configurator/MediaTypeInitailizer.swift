//
//  MediaTypeInitailizer.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class MediaTypeInitailizer: NSObject {
    
    @IBOutlet weak var view: MediaTypeView!
 
    override func awakeFromNib() {
        let configurator = MediaTypeConfigurator()
        configurator.setupModule(with: view)
    }
}
