//
//  CommonAlertsFactoryImpl.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class CommonAlertsFactoryImpl: CommonAlertsFactory {
    
    private let errorTitle = "Ошибка"
    private let okButtonText = "OK"
    
    func getErrorAlert(with message: String) -> UIViewController {
        let alert = creatEmptyAlert(with: errorTitle, and: message)
        let okAction = UIAlertAction(title: okButtonText, style: .default, handler: nil)
        alert.addAction(okAction)
        return alert
    }
    
    private func creatEmptyAlert(with title: String?, and message: String) -> UIAlertController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        return alertController
    }
}
