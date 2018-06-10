//
//  branchViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/21/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit
import MapKit

class branchViewController: UIViewController {

    @IBOutlet weak var mapBox: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(31.221215, 29.941862)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        mapBox.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "My Place"
        annotation.subtitle = "Come Visit Me Here!"
        mapBox.addAnnotation(annotation)
        
    }

  
}
