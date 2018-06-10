
import UIKit

class TableTableThirdBTableViewCell: UITableViewCell {

    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var uncheckbox: UIButton!
    
    var Checkbox = UIImage(named: "CheckBox")
    var UnCheckBox = UIImage(named: "UnCheckBox")
    var isboxclicked:Bool!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        isboxclicked = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func ClickBox(_ sender: Any) {
        if isboxclicked == true {
            isboxclicked = false
        }else{
            isboxclicked = true
        }
        
        
        if isboxclicked == true{
            uncheckbox.setImage(Checkbox, for: UIControlState.normal)
        }else{
            uncheckbox.setImage(UnCheckBox, for: UIControlState.normal)
            
        }
    }
}
