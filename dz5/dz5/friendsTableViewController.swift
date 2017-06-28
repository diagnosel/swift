//
//  friendsTableViewController.swift
//  dz5
//
//  Created by Аурика Сарева on 23.06.17.
//  Copyright © 2017 Marika Marika. All rights reserved.
//

import UIKit

class friendsTableViewController: UITableViewController {
 
    
    var names = ["James", "Julia", "Svetlana","Pall", "Galya"]
    var images = ["1", "2", "3", "4", "5"]
    var lastName = ["Franko", "Malinova", "Egorova", "Benn", "Viktorovs"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCellIdentifier", for: indexPath)
        
        if let myCell = cell as? friendsTableViewCell {
            myCell.friendsTitle.text = names[indexPath.row]
            myCell.friendsTitle.font = UIFont.boldSystemFont(ofSize: 24)
            myCell.friendsTitle.textColor = UIColor.darkGray
            myCell.detailTextLabel?.text = lastName[indexPath.row]
            myCell.detailTextLabel?.textColor = UIColor.purple
            myCell.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 19)
            myCell.imageView?.image = UIImage(named: images[indexPath.row])
            myCell.imageView?.clipsToBounds = true
            myCell.imageView?.layer.cornerRadius = 25.0
            tableView.rowHeight = 250
            return myCell
            
        }
        return cell
    }
    


}
