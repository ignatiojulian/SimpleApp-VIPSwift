//
//  ViewControllerPresenter.swift
//  VIPSwift
//
//  Created by Ignatio Julian on 06/11/21.
//

import Foundation

protocol ViewControllerPresentationLogic {
    func presentData(data: String)
}

class ViewControllerPresenter: ViewControllerPresentationLogic {
    
    var displayViewController: ViewControllerDisplayLogic?
    
    func presentData(data: String) {
        let result = ViewModel(data: data)
        self.displayViewController?.resultData(data: result)
    }
}
