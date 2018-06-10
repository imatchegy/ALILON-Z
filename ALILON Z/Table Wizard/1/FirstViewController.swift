
import UIKit

class FirstViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    var picone:NSArray = []
    var pictwo:NSArray = []
    var picexplain:NSArray = []
    var cateName:NSArray = []
    var catePrice:NSArray = []
    var pEgp:NSArray = []
    var minCharge:NSArray = []
    var serTax:NSArray = []
    var guestMany:NSArray = []
    
    
    
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var secound: UIButton!
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
        
        secound.layer.cornerRadius = secound.frame.width / 2
        secound.clipsToBounds = true
        
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as! FirstCollectionViewCell
        
        return cell

    }
}
