
import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var porfileImage: UIImageView!
    
    @IBOutlet weak var imageUpdate: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        porfileImage.layer.cornerRadius = porfileImage.frame.width / 2
        porfileImage.clipsToBounds = true
        
        porfileImage.layer.borderColor = UIColor.gray.cgColor
        porfileImage.layer.borderWidth = 6
       
        imageUpdate.layer.cornerRadius = imageUpdate.frame.width / 2
        imageUpdate.clipsToBounds = true
      

    }

 
}
