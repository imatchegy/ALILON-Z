
import UIKit

class TableTableFirstViewController: UIViewController{
   
    
   
    @IBOutlet weak var dateLbl: UILabel!
    
   
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //date
         NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDate, object: nil)
       

        
        first.layer.cornerRadius = first.frame.width / 2
        first.clipsToBounds = true
        
        second.layer.cornerRadius = second.frame.width / 2
        second.clipsToBounds = true
        
        third.layer.cornerRadius = third.frame.width / 2
        third.clipsToBounds = true
        
        fourth.layer.cornerRadius = fourth.frame.width / 2
        fourth.clipsToBounds = true
        
        fifth.layer.cornerRadius = fifth.frame.width / 2
        fifth.clipsToBounds = true


        }
    
    
    
    
        //date
   @objc func handlePopupClosing(notification: Notification) {
        let dateVC = notification.object as! DatePlaceViewController
        
        dateLbl.text = dateVC.formattedDate
    }
    
   
    
    
    
    //date
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDatePlace" {
            _ = segue.destination as! DatePlaceViewController
            
        }
       
        
        
        
    }


        // Do any additional setup after loading the view.
    }
    

   

    
    

