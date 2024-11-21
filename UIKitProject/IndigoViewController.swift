//
//  IndigoViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/21/24.
//

import UIKit

class IndigoViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var inputName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = inputName
    }
}
