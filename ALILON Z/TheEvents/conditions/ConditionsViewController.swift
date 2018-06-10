
import UIKit

class ConditionsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var Thepic:NSArray = []
    var theAge:NSArray = []
    var adult:NSArray = []
    
    @IBOutlet weak var ConditionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ConditionsTableView.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConditionsCell") as! ConditionsTableViewCell
        
        return cell
    }

}
