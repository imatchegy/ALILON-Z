

import UIKit

class HomemainViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    var places:NSArray = ["pic22","pic22","pic22","pic22"]
    var events:NSArray = []
    
    @IBOutlet weak var placesCollectionView: UICollectionView!
    @IBOutlet weak var eventsCollectionView: UICollectionView!
    
    
    //slider code is here
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //slider code is here
    var images: [String] = ["0", "1", "2"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        placesCollectionView.delegate = self
        placesCollectionView.dataSource = self
        
        eventsCollectionView.delegate = self
        eventsCollectionView.dataSource = self
        
        
        
        //slider code is here
    pageControl.numberOfPages = images.count
    for index in 0..<images.count {
        frame.origin.x = scrollView.frame.size.width
                * CGFloat(index)
            
        frame.size = scrollView.frame.size
            
    let imgView = UIImageView(frame: frame)
        imgView.image = UIImage(named: images[index])
    self.scrollView.addSubview(imgView)
            
        }
        
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        
        scrollView.delegate = self
        
    }
    
    
    
    //slider code is here
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pagenumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pagenumber)
        
        
        
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return places.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.placesCollectionView {
            let cell:PlacesCustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlacesCustomCell", for: indexPath) as! PlacesCustomCollectionViewCell
            
            cell.imageCell.image = UIImage(named: places[indexPath.row] as! String)
            cell.placeNameLbl.text = places[indexPath.row] as? String
            
            
            return cell
        }else{
            let cell:EventsCustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCustomCell", for: indexPath) as! EventsCustomCollectionViewCell
            
            
            
            return cell
        }
    }
}
    




















