//
//  SearchMediaPresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class SearchMediaPresenter: SearchMediaViewOutput, SearchMediaInteractorOutput {
    
    weak var view: SearchMediaViewInput!
    var interactor: SearchMediaInteractorInput!
    var router: SearchMediaRouterInput!
    
    func viewIsReady() {
        view.prepareTableView()
        view.prepareSearchController()
    }
    
    func OnViewDidAppear() {
        view.reloadTableView()
    }
    
    func getMedia(by text: String) {
        interactor.getSearchResult(with: text)
    }
    
    func didFinishingLoadSearchMediaResult(with result: [SearchMediaCellModel]) {
        view.set(cellModels: result)
        view.reloadTableView()
    }
    
}

