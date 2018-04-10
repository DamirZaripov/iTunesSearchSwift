//
//  SearchMediaRouter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit
import SafariServices

class SearchMediaRouter: SearchMediaRouterInput {

    weak var view: UIViewController!
    
    func showPage(with url: URL) {
        let safariViewController = SFSafariViewController(url: url)
        view.present(safariViewController, animated: true, completion: nil)
    }
    
}
