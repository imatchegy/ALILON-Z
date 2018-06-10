//
//  dateProfileViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class dateProfileViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var okButton: UIButton!
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .saveDate, object: self)
        
        dismiss(animated: true)
    }
    

}
