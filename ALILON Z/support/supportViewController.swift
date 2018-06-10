//
//  supportViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/30/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class supportViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    
   
    
    
    var personImgCell:NSArray = []
    var messageCell:NSArray = []
    var dateCell:NSArray = []

    @IBOutlet weak var supportTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        supportTableView.tableFooterView = UIView()
        supportTableView.dataSource = self
        supportTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = true
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "supportCell") as! supportTableViewCell
            
            cell.personImage.layer.cornerRadius = cell.personImage.frame.width / 2
            cell.personImage.clipsToBounds = true
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "support2Cell") as! support2TableViewCell
            
            
            cell.support2Image.layer.cornerRadius = cell.support2Image.frame.width / 2
            cell.support2Image.clipsToBounds = true
            
            return cell
        }
    }
    
    
    
}


