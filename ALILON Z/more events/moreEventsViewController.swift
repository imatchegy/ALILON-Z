
//
//  moreEventsViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 5/3/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit

class moreEventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout
{
    
  
    
    @IBOutlet weak var moreEventsCollectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width * 1.2 //ratio
        return CGSize(width: width , height: height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreEventsCollectionView.delegate = self
        moreEventsCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "moreEventsCell", for: indexPath) as! moreEventsCollectionViewCell
        
        return cell
    }

 
}
