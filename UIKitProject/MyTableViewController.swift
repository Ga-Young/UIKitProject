//
//  MyTableViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/14/24.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView! {
        didSet {
            myTableView.delegate = self
            myTableView.dataSource = self
        }
    }
    
    let cellData = ["1", "2", "3", "4", "5", "6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = . brown
        myTableView.backgroundColor = .yellow
    }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath)
        cell.textLabel?.text = cellData[indexPath.row]
        return cell
    }
}
