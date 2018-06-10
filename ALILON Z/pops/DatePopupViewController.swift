
import UIKit

class DatePopupViewController: UIViewController {
    
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    
    var formattedDate: String {
                let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return formatter.string(from: datePicker.date)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        
        dismiss(animated: true)
    }
    
}
