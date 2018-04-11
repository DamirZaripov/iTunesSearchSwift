//
//  Search.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 09.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

struct SearchMediaCellModelImpl: SearchMediaCellModel {
    
    var author: String
    var description: String?
    var imageURL: URL
    var price: Double?
    var viewURL: URL
    var name: String
    
    init(author: String, description: String?, imageURL: URL, price: Double?, viewURL: URL, name: String) {
        self.author = author
        self.description = description
        self.price = price
        self.imageURL = imageURL
        self.viewURL = viewURL
        self.name = name
    }

}
