
import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var RegisterImage: UIImageView!
    @IBOutlet weak var RegisterPicUpdate: UIImageView!
    
    @IBOutlet weak var updateBtn: UIButton!
    
    
    @IBOutlet weak var uncheckbox: UIButton!
    
    
    @IBOutlet weak var dateLable: UnderLineLable!
    
    @IBOutlet weak var nationality: UnderlinedBtn!
    
    @IBOutlet weak var preferredCity: UnderLineLable!
    
    var Checkbox = UIImage(named: "CheckBox")
    var UnCheckBox = UIImage(named: "UnCheckBox")
    var isboxclicked:Bool!

    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
        
        
        
        //cyrcal
        RegisterImage.layer.cornerRadius = RegisterImage.frame.width / 2
        RegisterImage.clipsToBounds = true
        
        //border
        //RegisterImage.layer.borderColor = UIColor.gray.cgColor
        //RegisterImage.layer.borderWidth = 4
        
        updateBtn.layer.cornerRadius = updateBtn.frame.width / 2
        updateBtn.clipsToBounds = true
    }
    
    @objc func handlePopupClosing(notification: Notification) {
        let dateVC = notification.object as! DatePopupViewController
        
        dateLable.text = dateVC.formattedDate
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDate" {
            _ = segue.destination as! DatePopupViewController
            
        }
    }

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
        
    @IBAction func selectDate(_ sender: UIButton) {
        
       
    }
    
}
    
    


