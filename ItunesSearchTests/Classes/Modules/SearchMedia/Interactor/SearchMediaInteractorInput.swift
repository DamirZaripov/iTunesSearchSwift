//
//  SearchMediaInteractorInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaInteractorInput: class {
    
    /// Get search result
    ///
    /// - Parameter term: search text
    func getSearchResult(with term: String)
    
}
