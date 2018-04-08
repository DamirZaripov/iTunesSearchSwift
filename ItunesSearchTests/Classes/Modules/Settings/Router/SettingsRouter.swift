//
//  SettingsRouter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SettingsRouter: SettingsRouterInput {
    
    weak var view: UIViewController!
    private let showMediaTypeIdentifier = "showMediaType"
    private let showAmountOfObiectsIdentifier = "showAmountOfObiects"
    
    func showMediaTypeScreen() {
        view.performSegue(withIdentifier: showMediaTypeIdentifier, sender: nil)
    }
    
    func showAmountOfObiectsScreen() {
        view.performSegue(withIdentifier: showAmountOfObiectsIdentifier, sender: nil)
    }
}
