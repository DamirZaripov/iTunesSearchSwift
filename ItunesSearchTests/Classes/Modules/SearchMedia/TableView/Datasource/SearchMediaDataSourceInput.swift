//
//  SearchMediaDatasourceInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 10.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

protocol SearchMediaDataSourceInput: UITableViewDelegate, UITableViewDataSource {
    
    func setCellModels(with models: [SearchMediaCellModel])
    func clearTableView()
    
}