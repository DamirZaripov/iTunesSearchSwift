//
//  SettingsConfigurator.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SettingsConfigurator {
    
    func setupModule(with viewController: SettingsView) {
        let presenter = SettingsPresenter()
        let interactor = SettingsInteractor()
        let router = SettingsRouter()
        
        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router
        
        viewController.presenter = presenter
        
        interactor.presenter = presenter
        
        router.view = viewController
    }
}
