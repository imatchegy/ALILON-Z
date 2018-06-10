//
//  loginViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/8/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var Email: FancyTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        setCustomBackImage()
      
    }

    
    func setCustomBackImage() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
