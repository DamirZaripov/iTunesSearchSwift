//
//  SearchMediaView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SearchMediaView: UIViewController, SearchMediaViewInput {
    
    @IBOutlet weak var mediaTableView: UITableView!
    //var searchController: UISearchController()
    
    var presenter: SearchMediaViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

extension SearchMediaView: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}
