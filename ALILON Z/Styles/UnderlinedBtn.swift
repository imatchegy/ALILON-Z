//
//  UnderlinedBtn.swift
//  ALILON Z
//
//  Created by iMATCH on 2/24/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class UnderlinedBtn: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        styleTextField()
    }
    
    private func styleTextField() {
        
        let neon = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        let border = CALayer()
        let width = CGFloat(0.8)
        
        border.borderColor = neon.cgColor
        border.borderWidth = width
        border.frame = CGRect(x: 0, y: bounds.size.height - width, width: bounds.size.width, height: bounds.size.height)
        
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
    }

}
