//
//  selectTimeViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/5/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class selectTimeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var timeLable:NSArray = []

    @IBOutlet weak var selectTimeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectTimeTableView.tableFooterView = UIView()
        selectTimeTableView.dataSource = self
        selectTimeTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "selectTimeCell") as! selectTimeTableViewCell
        
        return cell
    }



}
