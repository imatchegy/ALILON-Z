
import UIKit

class FourthViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    /*
    var activityIndicator = UIActivityIndicatorView()
    */
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    var Item:NSArray = []
    var Value:NSArray = []
    
    @IBOutlet weak var FourthTableView: UITableView!
    
    override func viewDidLoad() {
        /*
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = .gray
        self.view.addSubview(activityIndicator)
        */
        
        
        
        super.viewDidLoad()
        FourthTableView.tableFooterView = UIView()
        

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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FourthCell") as! FourthTableViewCell
        
        return cell
        
    }
    
    @IBAction func activityLoad(_ sender: UIButton) {
      /*
        activityIndicator.stopAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (timer) in
            UIApplication.shared.endIgnoringInteractionEvents()
            
        }
    }
    */
    
}

}








