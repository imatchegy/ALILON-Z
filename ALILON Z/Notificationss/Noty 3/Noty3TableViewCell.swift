//
//  Noty3TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Noty3TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgCell3: UIImageView!
    @IBOutlet weak var nameCell3: UILabel!
    @IBOutlet weak var whereCell: UILabel!
    @IBOutlet weak var dateCell3: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
