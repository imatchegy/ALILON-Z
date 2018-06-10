//
//  Noty2ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/1/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Noty2ViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
  
    
    
    var imgArr2:NSArray = []
    var dateArr2:NSArray = []
    var notiArr2:NSArray = []
    
    @IBOutlet weak var noty2TableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        noty2TableView.tableFooterView = UIView()
        noty2TableView.dataSource = self
        noty2TableView.delegate = self
        
        
        
        imgArr2 = [UIImage(named: "Simmons")!,UIImage(named: "InvitePic")!,UIImage(named: "InvitePic")!]
        dateArr2 = ["11 Dec. 2018, 9:00 PM", "11 Dec. 2018, 9:00 PM", "11 Dec. 2018, 9:00 PM"]
        notiArr2 = ["Ramy Ali Booked A Ticket to attened Sheraton hotel on 10:00 PM Sanday, December 11", "Ramy Ali Booked A Ticket to attened Sheraton hotel on 10:00 PM Sanday, December 11", "Ramy Ali Booked A Ticket to attened Sheraton hotel on 10:00 PM Sanday, December 11"]
        

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Noty2Cell") as! Noty2TableViewCell
        
        cell.imgCell2.image = imgArr2[indexPath.row] as? UIImage
        cell.notiCell2.text = notiArr2[indexPath.row] as? String
        cell.dateCell2.text = dateArr2[indexPath.row] as? String
        
        cell.imgCell2.layer.cornerRadius = cell.imgCell2.frame.width / 2
        cell.imgCell2.clipsToBounds = true
        
        return cell
    }

}
