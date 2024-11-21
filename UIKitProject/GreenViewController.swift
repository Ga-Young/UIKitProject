//
//  GreenViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/21/24.
//

import UIKit

class GreenViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoIndigo" {
            let viewController = segue.destination as! IndigoViewController
            viewController.inputName = nameTextField.text
        }
    }
}
