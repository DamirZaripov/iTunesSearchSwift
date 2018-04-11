//
//  ReusableView.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import UIKit

/// For instantiate view controller from storyboard
protocol ResuableView: class {
}

extension ResuableView {
    
    /// Identifier is name of view controller
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UIViewController: ResuableView {
}

extension UIStoryboard {
    func instantiateViewController<T>() -> T where T: ResuableView {
        return instantiateViewController(withIdentifier: T.reuseIdentifier) as! T
    }
}
