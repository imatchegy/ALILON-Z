//
//  Noty3ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Noty3ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    var nameArr3:NSArray = []
    var dateArr3:NSArray = []
    var whereArr:NSArray = []
    var imgArr3:NSArray = []
    
    @IBOutlet weak var noty3TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noty3TableView.tableFooterView = UIView()
        noty3TableView.dataSource = self
        noty3TableView.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Noty3Cell") as! Noty3TableViewCell
        
        return cell
    }


}
