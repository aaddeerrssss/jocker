

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name1textfild: UITextField!
    @IBOutlet weak var name2textfild: UITextField!
    @IBOutlet weak var name3textfild: UITextField!
    @IBOutlet weak var name4textfild: UITextField!
    
    
    @IBOutlet weak var Ilabel: UILabel!
    @IBOutlet weak var IIlabel: UILabel!
    @IBOutlet weak var IIIlabel: UILabel!
    @IBOutlet weak var IVlabel: UILabel!
    
    @IBOutlet weak var begin: UIButton!
    @IBOutlet weak var error: UILabel!
    
    @IBOutlet weak var parebi: UISwitch!
    var file = File()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        file.corner(begin)
        
    }

    override func touchesBegan(_ touches:Set<UITouch>, with event:UIEvent?){
        self.view.endEditing(true)
    }
    
    @IBAction func dawyeba(_ sender: UIButton) {
        if name1textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        
        else if name2textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        
        else if name3textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        else if name4textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        else{
            performSegue(withIdentifier: "segue", sender: self)
            
        }

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.destination as? ViewController2 else {
            return
        }
        
        controller.name1=name1textfild.text!
        controller.name2=name2textfild.text!
        controller.name3=name3textfild.text!
        controller.name4=name4textfild.text!
        controller.ysegment=xsegment
        controller.yparebi=xparebi
    }
    
    var xsegment = 0
    var xparebi = 0

    @IBAction func segment(_ sender: UISegmentedControl) {
        xsegment=sender.selectedSegmentIndex
    
    }
    
    @IBAction func fswitch(_ sender: UISwitch) {
        if parebi.isOn {
            xparebi=1
        }
        else{
            xparebi=0
        }

        
    }
    
    
}

