//
//  ConditionsTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 3/14/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class ConditionsTableViewCell: UITableViewCell {
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var adultChild: UILabel!
    @IBOutlet weak var picOne: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
