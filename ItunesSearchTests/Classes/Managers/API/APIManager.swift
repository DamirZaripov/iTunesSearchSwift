//
//  APIManagerInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol APIManager: class {
    
    var baseURL: String { get }
    var endURL: String { get }
    
    /// Request to receive data
    ///
    /// - Parameters:
    ///   - term: saerch term
    ///   - limit: search limit
    ///   - mediaType: search by media
    ///   - deviceType: searh by device
    ///   - completionBlock: result
    func getMedia(term: String, limit: String, mediaType: String, deviceType: String, completionBlock: @escaping (SearchMediaResult) -> ())
}
