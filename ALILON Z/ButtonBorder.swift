//
//  ButtonBorder.swift
//  ALILON Z
//
//  Created by iMATCH on 2/7/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class ButtonBorder : UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2/UIScreen.main.nativeScale
        layer.borderColor = UIColor.white.cgColor
    }
    
}
