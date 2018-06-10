//
//  wipeTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class wipeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var removeBtnE: UIButton!
    @IBOutlet weak var jobLblE: UILabel!
    @IBOutlet weak var picPersonE: UIImageView!
    
    @IBOutlet weak var nameLblE: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
