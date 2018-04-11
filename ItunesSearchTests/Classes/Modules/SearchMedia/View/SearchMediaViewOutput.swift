//
//  SearchMediaViewOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaViewOutput: class {
    
    /// View preparation
    func viewIsReady()
    
    /// Media get
    ///
    /// - Parameter text: media title
    func getMedia(by text: String)
    
    /// Then called viewDidApper in View
    func OnViewDidAppear()
    
}
