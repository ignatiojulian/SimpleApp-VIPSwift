//
//  SecondViewController.swift
//  VIPSwift
//
//  Created by Ignatio Julian on 06/11/21.
//

import UIKit

protocol SecondViewControllerDisplayLogic {
    
}

class SecondViewController: UIViewController, SecondViewControllerDisplayLogic {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var dataResult: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = dataResult?.data
    }
}
