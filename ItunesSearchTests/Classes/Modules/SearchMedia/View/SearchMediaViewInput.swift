//
//  SearchMediaViewInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol SearchMediaViewInput: class {
    
    func prepareTableView()
    func prepareSearchController()
    func prepareDelegates()
    func set(cellModels: [SearchMediaCellModel])
    func reloadTableView()
    func clearDataSource()
}
