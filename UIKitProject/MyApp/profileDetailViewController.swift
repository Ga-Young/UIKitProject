//
//  profileDetailViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/21/24.
//

import UIKit

class profileDetailViewController: UIViewController {
    @IBOutlet weak var detailLabel: UILabel!
    var datailString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = datailString
    }

}
