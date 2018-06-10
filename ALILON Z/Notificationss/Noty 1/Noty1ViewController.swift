//
//  Noty1ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Noty1ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var nameArr:NSArray = []
    var imgArr:NSArray = []
    var dateArr:NSArray = []
    var notiArr:NSArray = []

    @IBOutlet weak var noty1TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noty1TableView.tableFooterView = UIView()
        noty1TableView.dataSource = self
        noty1TableView.delegate = self
        
        nameArr = ["KFC","Jasmin Androw","Allon z"]
        imgArr = [UIImage(named: "feedplacespic")!,UIImage(named: "InvitePic")!,UIImage(named: "events")!]
        dateArr = ["11 Dec. 2018, 9:00 PM", "11 Dec. 2018, 9:00 PM", "11 Dec. 2018, 9:00 PM"]
        notiArr = ["Your booking has refused", "She wants to be your friend", "There is a new version press here to install it"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Noty1Cell") as! Noty1TableViewCell
        
        
        cell.imgCell.image = imgArr[indexPath.row] as? UIImage
        cell.nameCell.text = nameArr[indexPath.row] as? String
        cell.notiCell.text = notiArr[indexPath.row] as? String
        cell.dateCell.text = dateArr[indexPath.row] as? String
        
        cell.imgCell.layer.cornerRadius = cell.imgCell.frame.width / 2
        cell.imgCell.clipsToBounds = true

        
        return cell
    }
    


}
