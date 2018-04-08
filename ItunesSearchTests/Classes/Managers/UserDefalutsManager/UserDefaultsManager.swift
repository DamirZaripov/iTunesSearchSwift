//
//  UserDefaultsManager.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol UserDefaultsManager {
    
    func save(mediaType: MediaTypes)
    
    func getMediaType() -> MediaTypes?
    
    func save(amountOfObjects: Int)
    
    func getAmountOfObjects() -> Int
    
    func save(searchByDevice: SearchByDevice)
    
    func getSearchByDevice() -> SearchByDevice?
    
}
