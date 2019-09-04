

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var emailLbl: UILabel!
    @IBOutlet var rollLbl: UILabel!
    @IBOutlet var sectioLbl: UILabel!
     var name1 = String()
    var email1 = String()
    var roll1 = String()
    var section1 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = name1
        emailLbl.text = email1
        rollLbl.text = roll1
        sectioLbl.text = section1
        
        
    }
    

    

}
