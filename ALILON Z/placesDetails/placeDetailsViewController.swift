

import UIKit

class placeDetailsViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    
    @IBOutlet weak var placeDetailsTableView: UITableView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var imageCell:NSArray = []
    var titleCell:NSArray = []
    var cityCell:NSArray = []
    var dateCell:NSArray = []
    var occasionCell:NSArray = []
    

    @IBOutlet weak var placeDetailsCollectionView: UICollectionView!
    
    
    var images: [String] = ["0", "1", "2"]
    var frame = CGRect(x:0,y:0,width:0,height:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeDetailsTableView.delegate = self
        placeDetailsTableView.dataSource = self
        
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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "placeDetailsCell", for: indexPath) as! placeDetailsCollectionViewCell
        
        return cell
    }
    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pagenumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pagenumber)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placeDetailsCell") as! placeDetailsTableViewCell
        
        return cell
    }
    
}



