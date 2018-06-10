//
//  Booking3ViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 2/19/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class Booking3ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var image:NSArray = []
    var name:NSArray = []
    var date:NSArray = []
    var time:NSArray = []
    var place:NSArray = []
    var status:NSArray = []
    
    
    @IBOutlet weak var BookingThreeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BookingThreeTableView.tableFooterView = UIView()
        
        status = ["CONFIRMED", "NOT CONFIRMED", "ARRIVED"]

        
        /*
        personname = ["Mohammed Nasr", "Ahmed Ali", "Salah Hosny"]
        date = ["31 December", "31 December", "31 December"]
        time = ["3:00 PM", "3:00 PM", "3:00 PM"]
        placename = ["Grand Hotel", "Sheraton","Sheraton"]
        eventplace = ["Event", "Event", "Place"]
        personimage = [UIImage(named: "InvitePic")!,UIImage(named: "InvitePic")!,UIImage(named: "InvitePic")!]
         */
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
        let cell = BookingThreeTableView.dequeueReusableCell(withIdentifier: "Booking3Cell") as! Booking3TableViewCell
        
        cell.BookingThreeImage.layer.cornerRadius = cell.BookingThreeImage.frame.width / 2
        cell.BookingThreeImage.clipsToBounds = true
        
        cell.BookingThreeStatus.text = status[indexPath.row] as? String
        
        /*
        cell.BookingThreePersonName.text = personname[indexPath.row] as? String
        cell.BookingThreeDate.text = date[indexPath.row] as? String
        cell.BookingThreeTime.text = time[indexPath.row] as? String
        cell.BookingThreePlaceName.text = placename[indexPath.row] as? String
        cell.BookingThreeEventOrPlace.text = eventplace[indexPath.row] as? String
        
        cell.BookingThreeImage.image = personimage[indexPath.row] as? UIImage
         */
        
        
        return cell
        
    }
    
    
    
    

}






















