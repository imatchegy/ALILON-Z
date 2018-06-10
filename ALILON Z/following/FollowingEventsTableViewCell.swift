//
//  FollowinEventsTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class FollowingEventsTableViewCell: UITableViewCell {

    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventType: UILabel!
    @IBOutlet weak var eventCity: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
