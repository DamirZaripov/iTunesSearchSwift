//
//  CommonAlertsFactory.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

protocol CommonAlertsFactory: class {
    
    /// Get UIAlertController with error title
    ///
    /// - Parameter message: error message to show
    /// - Returns: prepared alert
    func getErrorAlert(with message: String) -> UIViewController
}
