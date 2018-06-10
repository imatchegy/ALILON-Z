
import UIKit

class PreferredCityViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    @IBOutlet weak var preferredcitytableview: UITableView!
    
    var preferredcity:NSArray = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        setCustomBackImage()
    }
    
    func setCustomBackImage() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PreferredCityCell") as! PreferredCityTableViewCell
        
        return cell
    }
    

}
