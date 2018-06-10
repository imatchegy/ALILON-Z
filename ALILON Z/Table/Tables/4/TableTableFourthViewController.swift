//
//  TableTableFourthViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 3/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class TableTableFourthViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    var theItem:NSArray = []
    var theValue:NSArray = []

    @IBOutlet weak var TableTableFourthTableView: UITableView!
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableTableFourthTableView.tableFooterView = UIView()
        
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


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableTableFourthCell") as! TableTableFourthTableViewCell
        
        return cell
    }
}


