
import UIKit

class TableTableThirdCViewController: UIViewController {
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pic.layer.cornerRadius = pic.frame.width / 2
        pic.clipsToBounds = true
        
        
    }


}
