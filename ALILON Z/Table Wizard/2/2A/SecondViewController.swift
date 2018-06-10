
import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    
    
    var picPersnCell:NSArray = []
    var nameCell:NSArray = []
    var jobCell:NSArray = []
    var removeCell:NSArray = []
    
    
    @IBOutlet weak var secondTableView: UITableView!
    
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondTableView.tableFooterView = UIView()
        
        first.layer.cornerRadius = first.frame.width / 2
        first.clipsToBounds = true
        
        second.layer.cornerRadius = second.frame.width / 2
        second.clipsToBounds = true
        
        third.layer.cornerRadius = third.frame.width / 2
        third.clipsToBounds = true
        
        fourth.layer.cornerRadius = fourth.frame.width / 2
        fourth.clipsToBounds = true
        
        fifth.layer.cornerRadius = fifth.frame.width / 2
        fifth.clipsToBounds = true
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
  
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell") as! SecondTableViewCell
        
        cell.picPerson.layer.cornerRadius = cell.picPerson.frame.width / 2
        cell.picPerson.clipsToBounds = true
        
        return cell
    }


}
