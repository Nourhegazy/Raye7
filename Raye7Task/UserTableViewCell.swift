//
//  UserTableViewCell.swift
//  Raye7Task
//
//  Created by Ahmed Seleem on 6/5/17.
//  Copyright © 2017 Ahmed Seleem. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
   
    }
    
    func configureCell(user: User)
    {
     self.titleLabel.text = user.title
     self.bodyLabel.text = user.body
    }
    
}
