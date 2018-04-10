//
//  SearchMediaDataSource.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 10.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SearchMediaDataSource: NSObject, SearchMediaDataSourceInput {
    
    var cellModels = [SearchMediaCellModel]()
    let mediaCellIdentifier = "mediaCell"
    
    func setCellModels(with models: [SearchMediaCellModel]) {
        cellModels = models
    }
    
    func clearTableView() {
        cellModels.removeAll()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: mediaCellIdentifier , for: indexPath) as! MediaTableViewCell
        let cellModel = cellModels[indexPath.row]
        
        cell.prepareCell(with: cellModel)
        return cell        
    }
    
    
}
