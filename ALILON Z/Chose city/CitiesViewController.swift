
import UIKit

class CitiesViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
    

    @IBOutlet weak var CitiesTableView: UITableView!
    
    var cityname:NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CitiesTableView.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
        
        
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CitiesCell") as! CitiesTableViewCell
        
        return cell
    }
    
    
    
}
