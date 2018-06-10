//
//  SecondTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/18/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var picPerson: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var removeBtn: UIButton!
    @IBOutlet weak var jobLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
