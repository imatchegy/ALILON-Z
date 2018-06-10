//
//  thirdTimeViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/21/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class thirdTimeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    var timeCell:NSArray = []

    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    @IBOutlet weak var thirdTimeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thirdTimeTableView.tableFooterView = UIView()
        
        first.layer.cornerRadius = first.frame.width / 2
        first.clipsToBounds = true
        
        second.layer.cornerRadius = second.frame.width / 2
        second.clipsToBounds = true
        
        third.layer.cornerRadius = third.frame.width / 2
        third.clipsToBounds = true
        
        fourth.layer.cornerRadius = fourth.frame.width / 2
        fourth.clipsToBounds = true
        
        fifth.layer.cornerRadius = fifth.frame.width / 2
        fifth.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "thirdTimeCell") as! thirdTimeTableViewCell
        
        return cell
    }
   
}
