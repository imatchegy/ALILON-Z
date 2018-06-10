//
//  Booking-1ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking_1ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var name:NSArray = []
    var city:NSArray = []
    var time:NSArray = []
    var date:NSArray = []
    var category:NSArray = []
    var price:NSArray = []
    var payment:NSArray = []
    var status = [String]()


    @IBOutlet weak var BookingOneTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        BookingOneTableView.tableFooterView = UIView()
        
        payment = ["PENDING", "ACCEPTED", "REFUSED", "ACCEPTED"]
        
        
        /*
        category = ["Economic", "VIP", "Economic","VIP"]
        date = ["31 December", "31 December", "31 December","31 December"]
        time = ["3:00 PM", "3:00 PM", "3:00 PM","3:00 PM"]
        placename = ["Grand Hotel", "Sheraton", "Movambek","Sheraton"]
        price = ["350 EGP", "350 EGP", "350 EGP","350 EGP"]
        tickets = ["6 Tickets", "4 Tickets", "10 Tickets","2 Tickets"]
        eventplace = ["Event", "Event", "Place","Event"]
        status = ["Accepted", "Accepted", "Accepted","Accepted"]
        paymentneeded = ["Payment needed", "Payment needed", "Payment needed","Payment needed"]
         */

    }


    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 9
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = BookingOneTableView.dequeueReusableCell(withIdentifier: "Booking-1Cell") as! Booking_1TableViewCell
        
        
        
        // cell.BookingOneStatus.text = status[indexPath.row]
        
        
        
        
        return cell
    }

}
























