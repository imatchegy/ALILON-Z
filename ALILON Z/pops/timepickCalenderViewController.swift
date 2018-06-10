

import UIKit

class timepickCalenderViewController: UIViewController {
    
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var okButton: UIButton!
    
    
    var formattedDate: String {
        get {
            let formatter = DateFormatter()
            formatter.timeStyle = .short
            return formatter.string(from: timePicker.date)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveTime_TouchUpInside(_ sender: UIButton) {
        
        NotificationCenter.default.post(name: .saveTime, object: self)
        
        dismiss(animated: true)
    }
    

}
