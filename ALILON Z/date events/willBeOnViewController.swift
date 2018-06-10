//
//  willBeOnViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/28/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class willBeOnViewController: UIViewController {
    
    @IBOutlet weak var frist: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    
    @IBOutlet weak var dateLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        frist.layer.cornerRadius = frist.frame.width / 2
        frist.clipsToBounds = true
        
        second.layer.cornerRadius = second.frame.width / 2
        second.clipsToBounds = true
        
        third.layer.cornerRadius = third.frame.width / 2
        third.clipsToBounds = true
        
        fourth.layer.cornerRadius = fourth.frame.width / 2
        fourth.clipsToBounds = true
        
        fifth.layer.cornerRadius = frist.frame.width / 2
        fifth.clipsToBounds = true
    }


}
