//
//  MediaTypePresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class MediaTypePresenter: MediaTypeViewOutput, MediaTypeInteractorOutput {
    
    weak var view: MediaTypeViewInput!
    var interactor: MediaTypeInteractorInput!
    var router: MediaTypeRouterInput!
    
}
