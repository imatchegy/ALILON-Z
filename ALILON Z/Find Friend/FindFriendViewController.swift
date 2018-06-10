//
//  FindFriendViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/28/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class FindFriendViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var findFriendPic:NSArray = []
    var findFriendName:NSArray = []
    var findFriendJob:NSArray = []
    
    
  
    @IBOutlet weak var FindFriendTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FindFriendTableView.tableFooterView = UIView()
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
        
        
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FindFriendCell") as! FindFriendTableViewCell
        
        cell.FindFriendPic.layer.cornerRadius = cell.FindFriendPic.frame.width / 2
        cell.FindFriendPic.clipsToBounds = true
        
        //cell.FindFriendPic.layer.borderColor = UIColor.gray.cgColor
        //cell.FindFriendPic.layer.borderWidth = 4
        
        
        return cell
    }
    

}
