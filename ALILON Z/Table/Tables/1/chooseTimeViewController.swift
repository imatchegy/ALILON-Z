

import UIKit

class chooseTimeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var frist: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    
    @IBOutlet weak var chooseTimeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseTimeTableView.tableFooterView = UIView()
        
        frist.layer.cornerRadius = frist.frame.width / 2
        frist.clipsToBounds = true
        
        second.layer.cornerRadius = frist.frame.width / 2
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chooseTimeCell") as! chooseTimeTableViewCell
        
        return cell
    }


}
