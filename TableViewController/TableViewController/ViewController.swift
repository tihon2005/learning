//
//  ViewController.swift
//  TableViewController
//
//  Created by Tikhon Bazar on 27.12.22.
//

import UIKit

class ViewController: UIViewController {
    let tableViewController = UITableViewController(style: .plain)
    var allItem = ["Robbins", "Jobs", "Glibert"]
    var cellIndentifier = "Cell"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableViewController.tableView)
    }
    
    func createTableViewController(){
        tableViewController.tableView.register(UITableView.self, forCellReuseIdentifier: cellIndentifier)
        tableViewController.tableView.delegate = self
        tableViewController.tableView.dataSource = self
    }

}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allItem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIndentifier, for: indexPath)
        let item = allItem[indexPath.row]
        cell.textLabel?.text = item
        return cell
    }
    
    
}
