
import UIKit

class SecondBViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var pic:NSArray = []
    var name:NSArray = []
    var job:NSArray = []
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    

    @IBOutlet weak var SecondBTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         SecondBTableView.tableFooterView = UIView()
        
        first.layer.cornerRadius = first.frame.width / 2
        first.clipsToBounds = true
        
        second.layer.cornerRadius = second.frame.width / 2
        second.clipsToBounds = true
        
        third.layer.cornerRadius = third.frame.width / 2
        third.clipsToBounds = true
        
        fourth.layer.cornerRadius = fourth.frame.width / 2
        fourth.clipsToBounds = true
        
        fifth.layer.cornerRadius = fifth.frame.width / 2
        fifth.clipsToBounds = true    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondBCell") as! SecondBTableViewCell
        
        
        cell.thePic.layer.cornerRadius = cell.thePic.frame.width / 2
        cell.thePic.clipsToBounds = true
        
        return cell


}
    
}
