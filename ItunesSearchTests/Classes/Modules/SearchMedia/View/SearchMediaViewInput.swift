//
//  SearchMediaViewInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaViewInput: class {
    
    /// Table preparation
    func prepareTableView()
    
    /// Search controller preparation
    func prepareSearchController()
    
    /// Delegates preparation
    func prepareDelegates()
    
    /// Cell models transfer
    ///
    /// - Parameter cellModels: results
    func set(cellModels: [SearchMediaCellModel])
    
    /// Table view reload
    func reloadTableView()
    
    /// Clear data source
    func clearDataSource()
}
