//
//  Noty1TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Noty1TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var imgCell: UIImageView!
    @IBOutlet weak var dateCell: UILabel!
    @IBOutlet weak var notiCell: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
