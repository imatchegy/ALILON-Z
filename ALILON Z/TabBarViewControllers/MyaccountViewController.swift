

import UIKit

class MyaccountViewController: UIViewController {

    
    @IBOutlet weak var MyAccountPic: UIImageView!
    
    @IBOutlet weak var VIP: UILabel!
    @IBOutlet weak var BtnProfile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyAccountPic.layer.cornerRadius = MyAccountPic.frame.width / 2
        MyAccountPic.clipsToBounds = true
        
        //MyAccountPic.layer.borderColor = UIColor.gray.cgColor
        //MyAccountPic.layer.borderWidth = 5
        
        
        VIP.layer.cornerRadius = VIP.frame.width / 2
        VIP.clipsToBounds = true
        
        
        /*
        
            let neon = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
            let border = CALayer()
            let width = CGFloat(2.0)
            
            border.borderColor = neon.cgColor
            border.borderWidth = width
            border.frame = CGRect(x: 0, y: bounds.size.height - width, width: bounds.size.width, height: bounds.size.height)
            
            BtnProfile.layer.addSublayer(border)
            BtnProfile.layer.masksToBounds = true
            */
        
        
        
    }

    
    @IBAction func BtnMyAccountProfile(_ sender: Any)
    {
        
    }
    

}
