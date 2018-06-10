//
//  dateEventsViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/28/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class dateEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var day:NSArray = []
   
    @IBOutlet weak var frist: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    @IBOutlet weak var dateEventsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        day = ["Sanday", "Monday", "Tuesday", "Wensday", "Thursday", "Friday", "Satarday"]
        
        dateEventsTableView.tableFooterView = UIView()
        
        frist.layer.cornerRadius = frist.frame.width / 2
        frist.clipsToBounds = true
        
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
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dateEventsCell") as! dateEventsTableViewCell
        
        cell.dayLbl.text = day[indexPath.row] as? String
        
        return cell
    }
}















