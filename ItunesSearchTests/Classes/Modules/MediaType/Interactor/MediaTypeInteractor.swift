//
//  MediaTypeInteractor.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class MediaTypeInteractor: MediaTypeInteractorInput {
    
    weak var presenter: MediaTypeViewOutput!
    var userDefaultsManager: UserDefaultsManager!
}
