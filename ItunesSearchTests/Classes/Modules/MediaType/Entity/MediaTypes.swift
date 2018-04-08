//
//  MediaTypes.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

enum MediaTypes: String {
    case movie
    case podcast
    case music
    case musicVideo
    case audiobook
    case shortFilm
    case tvShow
    case software
    case ebook
    
    static let allValues: [MediaTypes] = [.movie, .podcast, .music, .musicVideo, .audiobook, .shortFilm, .tvShow, .software, .ebook]
}
