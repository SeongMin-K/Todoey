//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by SeongMinK on 2022/04/13.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit
import SwipeCellKit
import ChameleonFramework

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70.0
    }
    
    //MARK: - TableView DataSource Methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        
        return cell
    }
    
    //MARK: - SwipeTableViewCell Delegate
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            self.updateModel(at: indexPath)
        }

        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        return options
    }
    
    func updateModel(at indexPath: IndexPath) {
        // Update data model
    }
    
    func updateNavBarColor(_ backgroundColor: UIColor) {
        guard let navBar = navigationController?.navigationBar else { fatalError("NavigationController does not exist.") }
        
        let contrastOfBackgroundColor = ContrastColorOf(backgroundColor: backgroundColor, returnFlat: true)
        
        navBar.barTintColor = backgroundColor
        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: contrastOfBackgroundColor]
        
        navBar.backgroundColor = backgroundColor
        navBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: contrastOfBackgroundColor]
        
        navBar.tintColor = contrastOfBackgroundColor
    }
}
