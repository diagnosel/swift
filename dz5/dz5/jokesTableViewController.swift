//
//  jokesTableViewController.swift
//  dz5
//
//  Created by Аурика Сарева on 23.06.17.
//  Copyright © 2017 Marika Marika. All rights reserved.
//

import UIKit

class jokesTableViewController: UITableViewController {

    @IBOutlet var jokesTableView: UITableView!
    let image = ["https://i.obozrevatel.com/16/1794479/gallery/714362.jpg",
                 "https://i.obozrevatel.com/16/1794479/gallery/399205.jpg",
                 "https://i.obozrevatel.com/16/1794479/gallery/488619.jpg",
                 "https://i.obozrevatel.com/16/1794479/gallery/124463.jpg",
                 "https://i.obozrevatel.com/16/1794479/gallery/945977.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return image.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jokesCellIdentifier", for: indexPath)
        
        var contentHeight: CGFloat = 0.0
        let contentWidth: CGFloat = self.view.bounds.size.width
        
        if let myCell = cell as? jokesTableViewCell {
            if let url: URL = URL(string: image[indexPath.row]) {
            do {
                let imageData: Data = try Data(contentsOf: url)
                myCell.imageView?.image = UIImage(data: imageData)
                myCell.imageView?.clipsToBounds = true
                myCell.layer.cornerRadius = 25
                let aspectRation = (myCell.imageView?.image?.size.width)!/(myCell.imageView?.image?.size.height)!
                contentHeight += contentWidth/aspectRation
            } catch let error {
                print("error = \(error)")
                }
        }
  
            tableView.rowHeight = contentHeight
            return myCell
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if let image = 
    }


}
