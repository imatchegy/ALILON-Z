//
//  Booking-2ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking_2ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var name:NSArray = []
    var city:NSArray = []
    var date:NSArray = []
    var time:NSArray = []
    var category:NSArray = []
    var price:NSArray = []
    var payment:NSArray = []
    
    
    var status:NSArray = []
    
    
    @IBOutlet weak var BookingTwoTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BookingTwoTableView.tableFooterView = UIView()
        
        status = ["ACCEPTED", "REFUSED", "PENDING"]
        
       
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = BookingTwoTableView.dequeueReusableCell(withIdentifier: "Booking-2Cell") as! Booking_2TableViewCell
        
        cell.BookingTwoStatus.text = status[indexPath.row] as? String
        
       
        
        //change text color
        //cell.BookingTwoStatus.textColor = UIColor.black
        
        //change text background color
        //cell.BookingTwoStatus.backgroundColor = UIColor.blue
        
        
        
      
        
        return cell
    }

}
