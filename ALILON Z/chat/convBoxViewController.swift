//
//  convBoxViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/30/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class convBoxViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var personImageCell:NSArray = []
    var dateCell:NSArray = []
    var messageCell:NSArray = []
    
    @IBOutlet weak var convBoxTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        convBoxTableView.tableFooterView = UIView()
        convBoxTableView.delegate = self
        convBoxTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "convBoxCell") as! convBoxTableViewCell
            
            cell.personImage.layer.cornerRadius = cell.personImage.frame.width / 2
            cell.personImage.clipsToBounds = true
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "convBox2Cell") as!convBox2TableViewCell
            
            
            cell.person2Image.layer.cornerRadius = cell.person2Image.frame.width / 2
            cell.person2Image.clipsToBounds = true
            
            return cell
        }
    }
    
    

}

