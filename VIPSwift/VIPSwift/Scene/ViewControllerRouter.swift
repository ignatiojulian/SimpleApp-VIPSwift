//
//  ViewControllerRouter.swift
//  VIPSwift
//
//  Created by Ignatio Julian on 06/11/21.
//

import Foundation
import UIKit

protocol ViewControllerRoutingLogic {
    func routeToSecondViewController(_ data: ViewModel?)
}

class ViewControllerRouter: NSObject, ViewControllerRoutingLogic {
    
    weak var viewController: ViewController?
    weak var secondViewController : SecondViewController?
    
 
    func routeToSecondViewController(_ data: ViewModel?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyboard.instantiateViewController(identifier: "SECONDVIEWCONTROLLER") as? SecondViewController else { return }
        
        controller.dataResult = data
        viewController?.navigationController?.pushViewController(controller, animated: true)
    }
}
