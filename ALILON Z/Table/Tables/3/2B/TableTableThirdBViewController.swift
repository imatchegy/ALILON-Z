
import UIKit

class TableTableThirdBViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
   
    @IBOutlet weak var TableTableThirdBTableView: UITableView!
    
    var thePic:NSArray = []
    var theName:NSArray = []
    var theJob:NSArray = []
    var theCheck:NSArray = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableTableThirdBTableView.tableFooterView = UIView()

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableTableThirdBCell") as! TableTableThirdBTableViewCell
        
        
        cell.pic.layer.cornerRadius = cell.pic.frame.width / 2
        cell.pic.clipsToBounds = true
        return cell
    }
    


}
