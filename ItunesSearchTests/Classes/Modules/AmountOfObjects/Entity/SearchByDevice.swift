//
//  SearchByDevice.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

enum SearchByDevice: String {
    case iphone
    case ipad
    case both
    
    static let allDevices: [SearchByDevice] = [.iphone, .ipad, .both]
}
