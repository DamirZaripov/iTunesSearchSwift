//
//  MediaTypeOutput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeViewOutput: class {
    
    func viewIsReady()
    
    func onViewWillAppear()
    
    func getNumberOfComponents()
    
    func getNumberOfRowsInComponent()
    
    func getTitleForRow(index: Int)
    
    func didSelectMediaType(at index: Int)
    
}
