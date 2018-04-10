//
//  SearchMediaViewOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaViewOutput: class {
    
    func viewIsReady()
    func getMedia(by text: String)
    func OnViewDidAppear()
    
}
