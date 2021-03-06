//
//  thirdTimeTableViewCell.swift
//  ALILON Z
//
//  Created by iMATCH on 4/21/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class thirdTimeTableViewCell: UITableViewCell {

    @IBOutlet weak var timeLbl: UILabel!
    
    @IBOutlet weak var uncheckbox: UIButton!
    
    var Checkbox = UIImage(named: "CheckBox")
    var UnCheckBox = UIImage(named: "UnCheckBox")
    var isboxclicked:Bool!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        isboxclicked = false
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func ClickBox(_ sender: Any) {
        
        if isboxclicked == true {
            isboxclicked = false
        }else{
            isboxclicked = true
        }
        
        
        if isboxclicked == true{
            uncheckbox.setImage(Checkbox, for: UIControlState.normal)
        }else{
            uncheckbox.setImage(UnCheckBox, for: UIControlState.normal)
        }
    }
}

