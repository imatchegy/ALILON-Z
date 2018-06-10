//
//  support2TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class support2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var support2Image: UIImageView!
    @IBOutlet weak var message2Lbl: UILabel!
    @IBOutlet weak var date2Lbl: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
