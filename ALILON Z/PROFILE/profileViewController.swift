
import UIKit

class profileViewController: UIViewController {
    
    
    @IBOutlet weak var pofileImage: UIImageView!
    
    @IBOutlet weak var profileImageUpdate: UIButton!
    
    @IBOutlet weak var fristName: FancyTextField!
    
    @IBOutlet weak var lastName: FancyTextField!
    
    @IBOutlet weak var jobTitle: FancyTextField!
    
    @IBOutlet weak var MobileNo: FancyTextField!
    
    @IBOutlet weak var facebookUrl: FancyTextField!
    
    @IBOutlet weak var preferresCity: FancyTextField!
    
    @IBOutlet weak var emailAccount: FancyTextField!
    
    @IBOutlet weak var birthday: UILabel!
    
    @IBOutlet weak var nationality: UILabel!
    
    //ckeck box
    @IBOutlet weak var uncheckbox: UIButton!
    
    //ckeck box
    var Checkbox = UIImage(named: "CheckBox")
    var UnCheckBox = UIImage(named: "UnCheckBox")
    var isboxclicked:Bool!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pofileImage.layer.cornerRadius = pofileImage.frame.width / 2
        pofileImage.clipsToBounds = true
        
        profileImageUpdate.layer.cornerRadius = profileImageUpdate.frame.width / 2
        profileImageUpdate.clipsToBounds = true
        
        
        //check box
         isboxclicked = false
        
        //popup
         NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDate, object: nil)
    }
    
    //popup
    @objc func handlePopupClosing(notification: Notification) {
        let dateVC = notification.object as! dateProfileViewController
        
        birthday.text = dateVC.formattedDate
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDateProfile" {
            _ = segue.destination as! dateProfileViewController
            
        }
        
    }
    
    
    
    
    
    //ckeck box
    @IBAction func ClickBox(_ sender: Any) {
        
        
        if isboxclicked == true {
            isboxclicked = false
        }else{
            isboxclicked = true
        }
        
        
        if isboxclicked == true{
            uncheckbox.setImage(Checkbox, for: UIControlState.normal)
        }else{
            uncheckbox.setImage(UnCheckBox, for: UIControlState.normal)
        }
    }
    

}

