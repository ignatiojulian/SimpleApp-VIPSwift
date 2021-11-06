//
//  ViewControllerInteractor.swift
//  VIPSwift
//
//  Created by Ignatio Julian on 06/11/21.
//

import Foundation

protocol ViewControllerBussinessLogic {
    func requestData()
}

class ViewControllerInteractor: ViewControllerBussinessLogic {
    
    private let dataString: String = "Here's the example data that would be passing to second viewController"
    
    var presenter: ViewControllerPresentationLogic?
    
    func requestData() {
        self.presenter?.presentData(data: dataString)
    }
}
