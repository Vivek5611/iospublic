
import UIKit

class cell: UITableViewCell {
    
   
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var EmailLbl: UILabel!
    @IBOutlet var RollLbl: UILabel!
    @IBOutlet var SectionLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
