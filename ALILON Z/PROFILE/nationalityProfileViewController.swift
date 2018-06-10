//
//  nationalityProfileViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class nationalityProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var countryName:NSArray = []

    @IBOutlet weak var countryNameTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countryNameTableView.tableFooterView = UIView()
        countryNameTableView.delegate = self
        countryNameTableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 122
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nationalityProfileCell") as! nationalityProfileTableViewCell
        
        return cell
    }

}
