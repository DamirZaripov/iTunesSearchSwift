//
//  SearchMediaConfigurator.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class SearchMediaConfigurator {
    
    func setupModule(with view: SearchMediaView) {
        let presenter = SearchMediaPresenter()
        let interactor = SearchMediaInteractor()
        let router = SearchMediaRouter()
        
        view.presenter = presenter
        
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        
        interactor.presenter = presenter
    }
}
