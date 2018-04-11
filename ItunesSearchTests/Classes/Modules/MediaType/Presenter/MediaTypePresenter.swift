//
//  MediaTypePresenter.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 08.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

class MediaTypePresenter: MediaTypeViewOutput, MediaTypeInteractorOutput {
    
    weak var view: MediaTypeViewInput!
    var interactor: MediaTypeInteractorInput!
    var router: MediaTypeRouterInput!
    
    //MARK: - View output
    
    func viewIsReady() {
        view.preparePickerView()
        interactor.prepareDate()
    }
    
    func onViewWillAppear() {
        interactor.getSaveMediaType()
    }
    
    func getNumberOfComponents() {
        interactor.getNumberOfComponents()
    }
    
    func getNumberOfRowsInComponent() {
        interactor.getNumberOfRows()
    }
    
    func getTitleForRow(index: Int) {
        interactor.getTitleOfRow(at: index)
    }
    
    func didSelectMediaType(at index: Int) {
        interactor.saveMediaType(with: index)
    }
    
    //MARK: - Interactor output
    
    func didFinishingGetNumberOfComponents(with number: Int) {
        view.setNumberOfComponents(with: number)
    }
    
    func didFinishingGetNumberOfRowsInComponent(with number: Int) {
        view.setNumberOfRowsInComponent(with: number)
    }
    
    func didFinishingGetTitleForRow(with title: String) {
        view.setTitleForRow(with: title)
    }
    
    func didFinishingGetMediaType(with index: Int) {
        view.setSelectedRow(indexOfRow: index)
    }
    
}
