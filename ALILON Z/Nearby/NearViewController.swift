
import UIKit

class NearViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var places:NSArray = ["pic22","pic22","pic22","pic22"]
    var events:NSArray = []
    
    @IBOutlet weak var placeCollectionView: UICollectionView!
    @IBOutlet weak var eventCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width * 1.2 //ratio
        return CGSize(width: width , height: height)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeCollectionView.delegate = self
        placeCollectionView.dataSource = self
        
        eventCollectionView.delegate = self
        eventCollectionView.dataSource = self

        // Do any additional setup after loading the view.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.placeCollectionView {
            let cell:NearPlaceCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NearPlaceCell", for: indexPath) as! NearPlaceCollectionViewCell
            
            cell.placeImage.image = UIImage(named: places[indexPath.row] as! String)
            cell.placeName.text = places[indexPath.row] as? String
            
            
            return cell
            
        }else{
            let cell:NearEventCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "NearEventCell", for: indexPath) as! NearEventCollectionViewCell
            
            
            
            return cell
        }
    }
    

}
