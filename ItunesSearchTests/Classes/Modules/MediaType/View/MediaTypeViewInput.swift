//
//  MediaTypeInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeViewInput: class {
    
    func preparePickerView()
    
    func setNumberOfComponents(with number: Int)
    
    func setTitleForRow(with title: String)
    
    func setNumberOfRowsInComponent(with number: Int)
    
    func setSelectedRow( indexOfRow: Int)
}
