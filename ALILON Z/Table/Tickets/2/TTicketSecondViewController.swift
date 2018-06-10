
import UIKit

class TTicketSecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    
    var thePicone:NSArray = []
    var thePictwe:NSArray = []
    var thePicthree:NSArray = []
    var theCategory:NSArray = []
    var thePrice:NSArray = []
    var theEgp:NSArray = []
    var theMincharge:NSArray = []
    var theWts:NSArray = []
    var theGuests:NSArray = []
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    @IBOutlet weak var fourth: UIButton!
    @IBOutlet weak var fifth: UIButton!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width * 1.2 //ratio
        return CGSize(width: width , height: height)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TTicketSecondCell", for: indexPath) as! TTicketSecondCollectionViewCell
        
        return cell
    }

}
