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
    
    var presenter: SearchMediaViewOutput!
    var searchMediaDataSource: SearchMediaDataSourceInput!
    
    let mediaCellIdentifier = "mediaCell"
    let mediaCellTableViewNibName = "MediaTableViewCell"
    
    lazy var searchController: UISearchController = {
        return UISearchController(searchResultsController: nil)
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    func prepareTableView() {
        let nib = UINib(nibName: mediaCellTableViewNibName, bundle: nil)
        mediaTableView.register(nib, forCellReuseIdentifier: mediaCellIdentifier)
        mediaTableView.delegate = searchMediaDataSource
        mediaTableView.dataSource = searchMediaDataSource
    }
    
    func prepareSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func set(cellModels: [SearchMediaCellModel]) {
        searchMediaDataSource.setCellModels(with: cellModels)
    }
    
    func reloadTableView() {
        mediaTableView.reloadData()
    }
    
    func clearDataSource() {
        searchMediaDataSource.clearTableView()
    }
    
}

extension SearchMediaView: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        presenter.getMedia(by: text)
    }
    
}
