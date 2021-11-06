//
//  ViewController.swift
//  VIPSwift
//
//  Created by Ignatio Julian on 06/11/21.
//

import UIKit

protocol ViewControllerDisplayLogic {
    func resultData(data: ViewModel)
}

class ViewController: UIViewController, ViewControllerDisplayLogic {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var descriptionButton: UIButton!
    
    var router: (NSObject & ViewControllerRoutingLogic)?
    var interactor: ViewControllerBussinessLogic?
    
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.requestData()
    }

    @IBAction func sendDataButton(_ sender: Any) {
        router?.routeToSecondViewController(self.viewModel)
    }
    
    func resultData(data: ViewModel) {
        viewModel = data
    }
    
}

