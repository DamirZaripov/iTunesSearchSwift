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
    
    private let amountOfObjectsIndex = 0
    private let mediaTypeIndex = 1
    
    //MARK: - Settings view output
    
    func viewIsReady() {
        view.prepareTableView()
    }
    
    func didSelectSettingsRow(at indexPath: IndexPath) {
        let index = indexPath.row
        if (index == amountOfObjectsIndex) {
            router.showAmountOfObiectsScreen()
        } else if (index == mediaTypeIndex) {
            router.showMediaTypeScreen()
        }
    }
    
}
