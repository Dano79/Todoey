//
//  ViewController.swift
//  Todoey
//
//  Created by Daniel Odorizzi on 4/15/19.
//  Copyright © 2019 Daniel Odorizzi. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Beer", "Buy Stuff", "Have Fun"]

    override func viewDidLoad() {
        super.viewDidLoad()

        }
    
    //MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell",
                                                     for: indexPath)
            
            cell.textLabel?.text = itemArray[indexPath.row]
            
            return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }

}