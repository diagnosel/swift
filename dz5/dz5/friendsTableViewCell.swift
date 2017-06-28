//
//  friendsTableViewCell.swift
//  dz5
//
//  Created by Аурика Сарева on 23.06.17.
//  Copyright © 2017 Marika Marika. All rights reserved.
//

import UIKit

class friendsTableViewCell: UITableViewCell {

    @IBOutlet weak var friendsTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews()
    {
        let sizeImage: CGRect
        super.layoutSubviews()
        sizeImage = CGRect(x: 0.0, y: 0.0, width: 200.0, height: 200.0)
        self.imageView?.frame = sizeImage
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
