//
//  SettingsView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

class SettingsView: UITableViewController, SettingsViewInput {
    
    var presenter: SettingsViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension SettingsView {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelectSettingsRow(at: indexPath)
    }
    
}
