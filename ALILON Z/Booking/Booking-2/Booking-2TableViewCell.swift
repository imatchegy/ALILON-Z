//
//  Booking-2TableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking_2TableViewCell: UITableViewCell {
    
    @IBOutlet weak var BookingTwoName: UILabel!
    @IBOutlet weak var BookingTwoCity: UILabel!
    @IBOutlet weak var BookingTwoTime: UILabel!
    @IBOutlet weak var BookingTwoDate: UILabel!
    @IBOutlet weak var BookingTwoCategory: UILabel!
    @IBOutlet weak var BookingTwoPrice: UILabel!
    @IBOutlet weak var BookingTwoPayment: UILabel!
    @IBOutlet weak var BookingTwoStatus: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
