
import UIKit

class FriendsListViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var AddFriendsBtn: UIButton!
    
    @IBOutlet weak var FriendsListCollectionView: UICollectionView!
    
    
    var personpic:NSArray = []
    var personname:NSArray = []
    var personjob:NSArray = []
    var personfollow:NSArray = []
    var personcheckbox:NSArray = []
    var personmessage:NSArray = []
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width * 1.2 //ratio
        return CGSize(width: width , height: height)
    }
    
    override func viewDidLoad() {
        
//        FriendsListCollectionView.delegate = self
//        FriendsListCollectionView.dataSource = self
        
        
        
        super.viewDidLoad()
        
        //Shadow
        AddFriendsBtn.layer.cornerRadius = 3
        AddFriendsBtn.layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0,  blue: 0/255.0, alpha: 1.0).cgColor
        AddFriendsBtn.layer.shadowOffset = CGSize(width: 1.0, height: 7.75)
        AddFriendsBtn.layer.shadowRadius = 1.7
        AddFriendsBtn.layer.shadowOpacity = 0.85
        
        
        
        
//        personname = ["Mohammed Nasr", "Ahmed Ali", "Salah Hosny"]
//        personjob = ["Doctor", "Teacher", "Designer"]
//        personfollow = ["Unfollow", "Unfollow", "Unfollow"]
//        personcheckbox = ["Grand Hotel", "Sheraton","Sheraton"]
//        personmessage = ["Event", "Event", "Place"]
//
//        personpic = [UIImage(named: "InvitePic")!,UIImage(named: "InvitePic")!,UIImage(named: "InvitePic")!]
   
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsListCell", for: indexPath) as! FriendsListCollectionViewCell
        
        
        
        cell.FriendsListPicCell.layer.cornerRadius = cell.FriendsListPicCell.frame.width / 2
        cell.FriendsListPicCell.clipsToBounds = true
        
        
//        cell.FriendsListPicCell.layer.cornerRadius = cell.FriendsListPicCell.frame.width / 2
//        cell.FriendsListPicCell.clipsToBounds = true
//
//        cell.FriendsListPicCell.image = personpic[indexPath.row] as? UIImage
//        cell.FriendsListPersonNameCell.text = personname[indexPath.row] as? String
//        cell.FriendsListJobTitleCell.text = personjob[indexPath.row] as? String
//        cell.FriendsListPersonNameCell.text = personname[indexPath.row] as? String
//        cell.FriendsListUnfollowCell.text = personfollow[indexPath.row] as? String
     
        return cell
    
    }

}
