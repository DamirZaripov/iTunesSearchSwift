//
//  MediaTypeInteractorOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeInteractorOutput: class {
    
    /// Finishing get number of components
    ///
    /// - Parameter number: number
    func didFinishingGetNumberOfComponents(with number: Int)
    
    /// Finishing get number of rows in component
    ///
    /// - Parameter number: number
    func didFinishingGetNumberOfRowsInComponent(with number: Int)
    
    /// Finishing get title for row
    ///
    /// - Parameter title: title
    func didFinishingGetTitleForRow(with title: String)
    
    /// Finishing get media type
    ///
    /// - Parameter index: index
    func didFinishingGetMediaType(with index: Int)
}
