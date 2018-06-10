//
//  supportTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/30/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class supportTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var messageLBl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
