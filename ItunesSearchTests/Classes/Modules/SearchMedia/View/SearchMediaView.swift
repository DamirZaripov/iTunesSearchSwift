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
    let estimatedRowHeight: CGFloat = 44
    
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        presenter.OnViewDidAppear()
    }
    
    func prepareTableView() {
        let nib = UINib(nibName: mediaCellTableViewNibName, bundle: nil)
        mediaTableView.register(nib, forCellReuseIdentifier: mediaCellIdentifier)
        mediaTableView.delegate = searchMediaDataSource
        mediaTableView.dataSource = searchMediaDataSource
        mediaTableView.estimatedRowHeight = estimatedRowHeight
        mediaTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func prepareSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }

    func prepareDelegates() {
        searchMediaDataSource.cellPressedDelegate = presenter as? CellPressedDelegate
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
