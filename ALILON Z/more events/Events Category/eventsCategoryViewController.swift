//
//  eventsCategoryViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/5/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class eventsCategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    

    
    @IBOutlet weak var eventsCategoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eventsCategoryTableView.tableFooterView = UIView()
        eventsCategoryTableView.delegate = self
        eventsCategoryTableView.dataSource = self

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventsCategoryCell") as! eventsCategoryTableViewCell
        
        return cell
    }
    
   

}
