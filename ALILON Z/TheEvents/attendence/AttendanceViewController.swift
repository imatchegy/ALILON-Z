
import UIKit

class AttendanceViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    
    var thePic:NSArray = []
    var theName:NSArray = []
    var theJob:NSArray = []
    var theTickets:NSArray = []
    var thePic2:NSArray = []
    
    @IBOutlet weak var AttendanceCollectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width * 1.2 //ratio
        return CGSize(width: width , height: height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AttendanceCell", for: indexPath) as! AttendanceCollectionViewCell
        cell.pic.layer.cornerRadius = cell.pic.frame.width / 2
        cell.pic.clipsToBounds = true
        
        return cell
    }
}
