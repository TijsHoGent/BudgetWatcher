//
//  ViewController.swift
//  BudgetWatcher
//
//  Created by Tijs Fertinel on 31/12/17.
//  Copyright © 2017 Tijs Fertinel. All rights reserved.
//

import UIKit

class CategoryListViewController: UITableViewController {

    let categoryArray = ["Clothing", "Groceries", "Reocurring Bills"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK - Tableview Datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryItemCell", for: indexPath)
        cell.textLabel?.text = categoryArray[indexPath.row]
        
        return cell
    }
    
    // MARK - tableview delegate method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(categoryArray[indexPath.row])
        
        tableView.cellForRow(at: indexPath)?.accessoryType = .disclosureIndicator
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

