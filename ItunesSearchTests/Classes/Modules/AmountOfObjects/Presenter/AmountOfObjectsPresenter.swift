//
//  AmountOfObjectsPresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class AmountOfObjectsPresenter: AmountOfObjectsViewOutput, AmountOfObjectsInteractorOutput {
    
    weak var view: AmountOfObjectsViewInput!
    var interactor: AmountOfObjectsInteractorInput!
    var router: AmountOfObjectsRouterInput!
}
