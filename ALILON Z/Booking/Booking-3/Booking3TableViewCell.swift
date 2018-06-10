//
//  Booking3TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking3TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var BookingThreeImage: UIImageView!
    @IBOutlet weak var BookingThreeName: UILabel!
    @IBOutlet weak var BookingThreeTime: UILabel!
    @IBOutlet weak var BookingThreeDate: UILabel!
    @IBOutlet weak var BookingThreePlace: UILabel!
    @IBOutlet weak var BookingThreeStatus: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
