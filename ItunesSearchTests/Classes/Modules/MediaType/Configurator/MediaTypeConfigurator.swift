//
//  MediaTypeConfigurator.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class MediaTypeConfigurator {
    
    func setupModule(with view: MediaTypeView) {
        let presenter = MediaTypePresenter()
        let interactor = MediaTypeInteractor()
        let router = MediaTypeRouter()
        let userDefaultsManager = UserDefaultsManagerImpl()
        
        view.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        interactor.presenter = presenter
        interactor.userDefaultsManager = userDefaultsManager
        
        
    }
}
