//
//  videoViewController.swift
//  ALILON Z
//
//  Created by iMATCH on 4/14/18.
//  Copyright © 2018 iMATCH. All rights reserved.
//

import UIKit
import AVFoundation


class videoViewController: UIViewController {
    
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!


    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let URL = Bundle.main.url(forResource: "introo", withExtension: "mp4")
        
        player = AVPlayer.init(url: URL!)
        
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        playerLayer.frame = view.layer.frame
        
        player.actionAtItemEnd = AVPlayerActionAtItemEnd.none
        
        player.play()
        view.layer.insertSublayer(playerLayer, at: 0)
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemReachEnd(notification:)), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player.currentItem)
    }
    
    override func viewWillAppear(_ animated: Bool) {
      
    }
    
    @objc func playerItemReachEnd (notification : NSNotification){
        player.seek(to: kCMTimeZero)
    }


    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

}
