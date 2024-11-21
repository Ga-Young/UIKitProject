//
//  profileViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/21/24.
//

import UIKit

class profileViewController: UIViewController {

    @IBOutlet weak var profileTableView: UITableView! {
        didSet {
            profileTableView.dataSource = self
            profileTableView.delegate = self
        }
    }
    
    var profileData: [String: String] = ["아이디": "gayoungkim", "이메일": "gayoungkim@naver.com", "전화번호": "gayoung-kim", "주소": "gayoungkim ga 1234 ga"]
    var profileKeys: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileKeys = Array(profileData.keys)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let viewController = segue.destination as! profileDetailViewController
            viewController.datailString = profileData[profileKeys[profileTableView.indexPathForSelectedRow!.row]]
        }
    }
}

extension profileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileKeys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath)
        cell.textLabel?.text = profileKeys[indexPath.row]
        return cell
    }
}
