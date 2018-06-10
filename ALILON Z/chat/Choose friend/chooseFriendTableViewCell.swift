//
//  chooseFriendTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 5/6/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class chooseFriendTableViewCell: UITableViewCell {

    @IBOutlet weak var chooseFriendImage: UIImageView!
    @IBOutlet weak var chooseFriendName: UILabel!
    @IBOutlet weak var chooseFriendJob: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
