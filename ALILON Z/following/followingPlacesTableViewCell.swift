//
//  followingPlacesTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class followingPlacesTableViewCell: UITableViewCell {

    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeName: UILabel!
    @IBOutlet weak var placeType: UILabel!
    @IBOutlet weak var placeRate: UILabel!
    @IBOutlet weak var placeFollowers: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
