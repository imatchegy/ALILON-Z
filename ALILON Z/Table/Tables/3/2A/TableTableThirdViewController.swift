

import UIKit

class TableTableThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var picPersonECell:NSArray = []
    var nameLblECell:NSArray = []
    var jobLblECell:NSArray = []
    var removeBtnECell:NSArray = []
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    @IBOutlet weak var tableTableThirdTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableTableThirdTableView.tableFooterView = UIView()
     
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
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "wipeCell") as! wipeTableViewCell
        
        cell.picPersonE.layer.cornerRadius = cell.picPersonE.frame.width / 2
        cell.picPersonE.clipsToBounds = true
        
        return cell
    }
    

}
