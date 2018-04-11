//
//  AmountOfObjectsInteractorOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol AmountOfObjectsInteractorOutput: class {
    
    /// Finishing get number of rows in component
    ///
    /// - Parameter number: number
    func didFinishingGetNumberOfRowsInComponent(with number: Int)
    
    /// Finishing get title for row
    ///
    /// - Parameter title: title
    func didFinishingGetTitleForRow(with title: String)
    
    /// Finishing get amount
    ///
    /// - Parameter index: index
    func didFinishingGetAmountFromUserDefaults(with index: Int)
    
    /// Finishing get device search
    ///
    /// - Parameter index: index
    func didFinishingGetSearchByDeviceFromUserDefaults(with index: Int)
}
