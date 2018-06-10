//
//  Booking-1TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking_1TableViewCell: UITableViewCell {
    
    @IBOutlet weak var BookingOneName: UILabel!
    @IBOutlet weak var BookingOneCity: UILabel!
    @IBOutlet weak var BookingOneTime: UILabel!
    @IBOutlet weak var BookingOneDate: UILabel!
    @IBOutlet weak var BookingOneCategory: UILabel!
    @IBOutlet weak var BookingOnePrice: UILabel!
    @IBOutlet weak var BookingOnePayment: UILabel!
    @IBOutlet weak var BookingOneStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
