//
//  AmountOfObjectsInteractorOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsInteractorOutput: class {
    
    func didFinishingGetNumberOfRowsInComponent(with number: Int)
    
    func didFinishingGetTitleForRow(with title: String)
    
    func didFinishingGetAmountFromUserDefaults(with index: Int)
    
    func didFinishingGetSearchByDeviceFromUserDefaults(with index: Int)
}
