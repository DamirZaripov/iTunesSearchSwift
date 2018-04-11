//
//  UserDefaultsManager.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol UserDefaultsManager {
    
    /// Save current media type
    ///
    /// - Parameter mediaType: media title
    /// - Returns: void
    func save(mediaType: MediaTypes)
    
    /// Get current media type
    ///
    /// - Returns: current media type
    func getMediaType() -> MediaTypes?
    
    /// Save currnet amount of objects
    ///
    /// - Parameter amountOfObjects: amount
    /// - Returns: void
    func save(amountOfObjects: Int)
    
    ///  Get currnet amount of objects
    ///
    /// - Returns: currnet amount of objects
    func getAmountOfObjects() -> Int
    
    /// Save current device search
    ///
    /// - Parameter searchByDevice: device title
    /// - Returns: voud
    func save(searchByDevice: SearchByDevice)
    
    /// Get current device search
    ///
    /// - Returns: current device search
    func getSearchByDevice() -> SearchByDevice?
    
}
