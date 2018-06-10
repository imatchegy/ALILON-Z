//
//  JoinedFriendViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/14/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class JoinedFriendViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var name:NSArray = []
    var job:NSArray = []
    var imageArr:NSArray = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = " "
        
        tableView.tableFooterView = UIView()
        
        /*
        name = ["Friend Name", "Friend Name", "Friend Name","Friend Name"]
        job = ["Job title", "Job title", "Job title", "Job title"]
        imageArr = [UIImage(named: "Simmons")!,UIImage(named: "Simmons")!,UIImage(named: "Simmons")!,UIImage(named: "Simmons")!]
         */
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell

        cell.JionedFriendPic.layer.cornerRadius = cell.JionedFriendPic.frame.width / 2
        cell.JionedFriendPic.clipsToBounds = true
        
        /*
        cell.JionedFriendPic.image = imageArr[indexPath.row] as? UIImage
        cell.JionedFriendName.text = name[indexPath.row] as? String
        cell.JionedFriendJob.text = job[indexPath.row] as? String
        */
        
        return cell
    }

    
}





















