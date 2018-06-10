//
//  followingPlacesViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/27/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class followingPlacesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    
    var places:NSArray = []
    var events:NSArray = []

    @IBOutlet weak var placesTableView: UITableView!
    @IBOutlet weak var eventsTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        placesTableView.delegate = self
        placesTableView.dataSource = self
        
        eventsTableView.delegate = self
        eventsTableView.dataSource = self
        
        placesTableView.tableFooterView = UIView()
        eventsTableView.tableFooterView = UIView()
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.placesTableView {
            let cell:followingPlacesTableViewCell = tableView.dequeueReusableCell(withIdentifier: "followingPlacesCell") as! followingPlacesTableViewCell
            
            
            
            
            
            return cell
            
        }else{
            
            let cell:FollowingEventsTableViewCell = tableView.dequeueReusableCell(withIdentifier: "FollowingEventsCell") as! FollowingEventsTableViewCell
            
            
            
            return cell
            
        }
    
    

 



}
}













