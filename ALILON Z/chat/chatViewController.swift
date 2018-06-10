//
//  chatViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/30/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class chatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    
    var personImageCell:NSArray = []
    var personNameCell:NSArray = []
    var perviewMsgCell:NSArray = []
    var dateCell:NSArray = []
    var counterCell:NSArray = []
    
    @IBOutlet weak var chatTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.tableFooterView = UIView()
        chatTableView.delegate = self
        chatTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80

    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell") as! chatTableViewCell
        
        
        cell.counterMsg.layer.cornerRadius = cell.counterMsg.frame.width / 2
        cell.counterMsg.clipsToBounds = true
        
        cell.personImage.layer.cornerRadius = cell.personImage.frame.width / 2
        cell.personImage.clipsToBounds = true
        
        
        
        
        
        return cell
    }

}




