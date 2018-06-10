//
//  chooseFriendViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/6/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class chooseFriendViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var chooseFriendTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chooseFriendTableView.tableFooterView = UIView()
        chooseFriendTableView.dataSource = self
        chooseFriendTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chooseFriendCell") as! chooseFriendTableViewCell
        
        cell.chooseFriendImage.layer.cornerRadius = cell.chooseFriendImage.frame.width / 2
        cell.chooseFriendImage.clipsToBounds = true
        
        return cell
    }

  
}
