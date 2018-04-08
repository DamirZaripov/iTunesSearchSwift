//
//  SettingsPresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class SettingsPresenter: SettingsViewOutput, SettingsInteractorOutput {
    
    weak var view: SettingsViewInput!
    var interactor: SettingsInteractorInput!
    var router: SettingsRouterInput!
    
    //MARK: - Settings view output
    
    func viewIsReady() {
        
    }
    
    func onViewWillAppear() {
        
    }
    
    func didSelectSettingsRow(at indexPath: IndexPath) {
        
    }
    
    
    
    
}
