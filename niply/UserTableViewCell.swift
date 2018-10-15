//
//  UserTableViewCell.swift
//  niply
//
//  Created by Sebastian Misas on 10/11/18.
//  Copyright © 2018 Apps global. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var bitmojiImg: UIImageView!
    
}
