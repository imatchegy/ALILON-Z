//
//  segmentController2ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/23/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class segmentController2ViewController: UIViewController {
    
    var container : ContainerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            container.segueIdentifierReceivedFromParent("first")
            
        }else if sender.selectedSegmentIndex == 1 {
            container.segueIdentifierReceivedFromParent("second")
            
        }else{
            container.segueIdentifierReceivedFromParent("third")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "container"{
            self.container = segue.destination as! ContainerViewController
        }
    }

}
