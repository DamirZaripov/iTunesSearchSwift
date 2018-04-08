//
//  MediaTypeInteractorInput.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

protocol MediaTypeInteractorInput: class {
    
    func prepareDate()
    
    func saveMediaType(with index: Int)
    
    func getNumberOfRows()
    
    func getTitleOfRow(at index: Int) 
    
    func getSaveMediaType()
}
