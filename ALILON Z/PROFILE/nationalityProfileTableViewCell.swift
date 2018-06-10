//
//  nationalityProfileTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class nationalityProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var countryNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func countryName_Pressed(_ sender: UIButton) {
        
    }
}
