//
//  TodoViewController.swift
//  UIKitProject
//
//  Created by Gayoung Kim on 11/15/24.
//

import UIKit

struct todoItem {
    var title: String
    var isCompleted: Bool
}

class TodoViewController: UIViewController {

    @IBOutlet weak var todoTableView: UITableView! {
        didSet {
            todoTableView.dataSource = self
            todoTableView.delegate = self
        }
    }
    
    var data: [todoItem] = [todoItem(title: "ddd", isCompleted: true),
                            todoItem(title: "fdd", isCompleted: true),
                            todoItem(title: "gdd", isCompleted: false),
                            todoItem(title: "hdd", isCompleted: true),
                            todoItem(title: "jdd", isCompleted: false),
                            todoItem(title: "kdd", isCompleted: true),
                            todoItem(title: "ldd", isCompleted: false),
                            todoItem(title: "qdd", isCompleted: false)]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
    }
}

extension TodoViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //todoTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoTableViewCell", for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row].title
        cell.textLabel?.textColor = data[indexPath.row].isCompleted ? .green : .red
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let completeAction = UIContextualAction(style: .destructive, title: "Complete") { (action, sourceView, completionHandler) in
            self.data[indexPath.row].isCompleted.toggle()
            self.todoTableView.reloadData()
            completionHandler(true)
        }
        
        return UISwipeActionsConfiguration(actions: [completeAction])
    }
    
    func tableview(selectedRowAt indexPath: IndexPath) {
//        let selectedRow = data[indexPath.row]
        todoTableView.deselectRow(at: indexPath, animated: true)
    }
}
