
import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet var tableView: UITableView!
   @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet var txtFldEmail: UITextField!
    @IBOutlet var txtFldroll: UITextField!
    @IBOutlet var txtFldSection: UITextField!
    
    @IBOutlet var updateBtn: UIButton!
    
    let nameArr = NSMutableArray()
    var locArr = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        tableView.delegate = self
        tableView.dataSource = self

    }
    @IBAction func addActionBtn(_ sender: Any) {
         let dict = NSMutableDictionary()
        dict.setValue(txtFldName.text, forKey: "name")
        dict.setValue(txtFldEmail.text, forKey: "Email")
        dict.setValue(txtFldroll.text, forKey: "roll")
        dict.setValue(txtFldSection.text, forKey: "section")
        
       nameArr.add(dict)
        txtFldName.text = ""
        txtFldEmail.text = ""
        txtFldroll.text = ""
        txtFldSection.text = ""
       tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //            print(nsMute[indexPath.row]) as! <#type#>
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! cell
        let dictCell = nameArr[indexPath.row] as! NSMutableDictionary
        cell.nameLbl.text = dictCell["name"] as? String
        cell.RollLbl.text = dictCell["Email"] as? String
        cell.EmailLbl.text = dictCell["roll"] as? String
        cell.SectionLbl.text = dictCell["section"] as? String
        return cell
    }
    @IBAction func updateBtn(_ sender: Any) {
        let indexpath = IndexPath(row: locArr, section: 0)
        let cellData = nameArr[indexpath.row] as! NSMutableDictionary
        cellData["name"] = txtFldName.text
        cellData["Email"] = txtFldEmail.text
        cellData["roll"] = txtFldroll.text
        cellData["section"] = txtFldSection.text
        txtFldName.text = ""
        txtFldEmail.text = ""
        txtFldroll.text = ""
        txtFldSection.text = ""
        tableView.reloadData()
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.nameArr.removeObject(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
           
            }
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dictCell = nameArr[indexPath.row] as! NSMutableDictionary
        txtFldName.text = dictCell["name"] as? String
        
         txtFldEmail.text = dictCell["Email"] as? String
         txtFldroll.text = dictCell["roll"] as? String
         txtFldSection.text = dictCell["section"] as? String
        tableView.reloadData()
    }
  
    @IBAction func homeBtn(_ sender: Any) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
          let indexpath = IndexPath(row: locArr, section: 0)
        let dictCell = nameArr[indexpath.row] as! NSMutableDictionary
        
            detailVc.name1 = dictCell["name"] as! String
        detailVc.email1 = dictCell["Email"] as! String
        detailVc.roll1 = dictCell["roll"] as! String
        detailVc.section1 = dictCell["section"] as! String
        
        
        navigationController?.pushViewController(detailVc, animated: true)
        
        }
    }





