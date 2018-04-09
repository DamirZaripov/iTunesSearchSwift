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
    
}
