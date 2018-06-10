

import UIKit

class NationalityViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
 
    
  

    
    
    var country:NSArray = []
    
    @IBOutlet weak var NationlaityTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NationlaityTableView.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NationalityCell") as! NationalityTableViewCell
        
        return cell
    }
    

}
