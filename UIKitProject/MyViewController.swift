//
//  MyViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/13/24.
//

import UIKit

protocol AdminDelegate {
    func doTask()
}

class MyViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    @IBAction func TouchUpInside(_ sender: Any) {
        let name = nameTextField.text ?? ""
        helloLabel.text = "Hello, \(name)"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MyViewController: AdminDelegate {
    func doTask() {
        print("hello viewview")
    }
}
