//
//  convBox2TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/30/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class convBox2TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var person2Image: UIImageView!
    @IBOutlet weak var message2Lbl: UIView!
    @IBOutlet weak var date2bl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
