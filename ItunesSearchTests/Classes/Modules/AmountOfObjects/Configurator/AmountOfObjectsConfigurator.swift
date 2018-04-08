//
//  AmountOfObjectsRouterConfigurator.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class AmountOfObjectsConfigurator {
    
    func setupModule(with view: AmountOfObjectsView) {
        let presenter = AmountOfObjectsPresenter()
        let interactor = AmountOfObjectsInteractor()
        let router = AmountOfObjectsRouter()
        
        view.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        interactor.presenter = presenter
        
        router.view = view
    }
}
