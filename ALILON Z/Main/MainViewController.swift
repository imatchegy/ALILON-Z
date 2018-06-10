
import UIKit

class MainViewController: UIViewController{

 
    
    //Adding Drop Down Menu
    @IBOutlet var cityButtons: [UIButton]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
       
    }
    

    
    
    //Adding Drop Down Menu Start
    @IBAction func handleSelection(_ sender: UIButton) {
        cityButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()

            })
        }
    }
    
    enum Citys: String {
        case cairo = "Cairo"
        case sharmelshekh = "Sharm El Shekh"
        case luxor = "Luxor"
        case sharqia = "Sharqia"
        case matruh = "Matruh"
        case ismailia = "Ismailia"
        case giza = "Giza"
    }
    
    @IBAction func cityTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let city = Citys(rawValue: title) else {
            return
        }

        switch city {
        case .cairo:
            print("Cairo")
        default:
            print("Sharm El Shekh")
        }
        //Adding Drop Down Menu End
        
    }
    
}
















