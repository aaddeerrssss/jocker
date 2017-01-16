
import UIKit
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class ViewController2: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var name1label: UILabel!
    @IBOutlet weak var name2label: UILabel!
    @IBOutlet weak var name3label: UILabel!
    @IBOutlet weak var name4label: UILabel!
    
    
    @IBOutlet weak var count: UILabel!
    
    
    
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    
    @IBOutlet weak var tx1: UITextField!
    @IBOutlet weak var tx2: UITextField!
    @IBOutlet weak var tx3: UITextField!
    @IBOutlet weak var tx4: UITextField!
    
    @IBOutlet weak var tx5: UITextField!
    @IBOutlet weak var tx6: UITextField!
    @IBOutlet weak var tx7: UITextField!
    @IBOutlet weak var tx8: UITextField!
    
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var bcxrili: UIButton!
    @IBOutlet weak var bwashla: UIButton!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    
    var ysegment = 0
    var yparebi = 0
    
    
    var name1 = ""
    var name2 = ""
    var name3 = ""
    var name4 = ""
    
    var p1 = File()
    var p2 = File()
    var p3 = File()
    var p4 = File()
    
    var file = File()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name1label.text=name1
        name2label.text=name2
        name3label.text=name3
        name4label.text=name4
        
        tx1.delegate = self
        tx2.delegate = self
        tx3.delegate = self
        tx4.delegate = self
        tx5.delegate = self
        tx6.delegate = self
        tx7.delegate = self
        tx8.delegate = self
        
        file.corner(b0)
        file.corner(b1)
        file.corner(b2)
        file.corner(b3)
        file.corner(b4)
        file.corner(b5)
        file.corner(b6)
        file.corner(b7)
        file.corner(b8)
        file.corner(b9)
        file.corner(b10)
        file.corner(bcxrili)
        file.corner(bwashla)
        
        name1label.textColor = UIColor.green
        name2label.textColor = UIColor.green
        name3label.textColor = UIColor.green
        name4label.textColor = UIColor.green
        
    }
    
    var count2 = 0
    
    var t1 = 0
    var t2 = 0
    var t3 = 0
    var t4 = 0
    
    @IBAction func number(_ sender: UIButton) {
        
        
        if sender.tag > Int(count.text!){
            error.text="!"
        }
        else{
            if count3 % 4 == 1{
            if count2 == 0{
            tx1.text="\(sender.tag)"
            if tx1.text=="0"{
                tx1.text="-"
            }
            tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
        }
        else if count2 == 1{
            tx2.text="\(sender.tag)"
            if tx2.text=="0"{
                tx2.text="-"
            }

            tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
        }
        else if count2 == 2{
            tx3.text="\(sender.tag)"
            if tx3.text=="0"{
                tx3.text="-"
            }

            tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                error.text=""
                var a = 0
                var b = 0
                var c = 0
                
                if tx1.text == "-"{
                    a=0
                }
                else{
                    a = Int(tx1.text!)!
                }
                
                if tx2.text == "-"{
                    b=0
                }
                else{
                    b = Int(tx2.text!)!
                }
                
                if tx3.text == "-"{
                    c=0
                }
                else{
                    c = Int(tx3.text!)!
                }


                
                    
                if Int(count.text!)! >= ( a + b + c) {
                    info.text = "\(Int(count.text!)! - (a + b + c))-ს გარდა"
                }
            
        }

        else if count2 == 3{
            tx4.text="\(sender.tag)"
            if tx4.text=="0"{
                tx4.text="-"
            }

            tx5.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
                info.text=""
                var a = 0
                var b = 0
                var c = 0
                var d = 0
                
                if tx1.text == "-"{
                    a=0
                }
                else{
                    a = Int(tx1.text!)!
                }
                
                if tx2.text == "-"{
                    b=0
                }
                else{
                    b = Int(tx2.text!)!
                }
                
                if tx3.text == "-"{
                    c=0
                }
                else{
                    c = Int(tx3.text!)!
                }
                
                if tx4.text == "-"{
                    d=0
                }
                else{
                    d = Int(tx4.text!)!
                }
                if (a + b + c + d) > Int(count.text!)! {
                    info.text = "წაგლეჯვაა \(abs(Int(count.text!)! - (a + b + c + d)))"
                }
                else if (a + b + c + d) < Int(count.text!)! {
                    info.text = "შეტენვაა \(Int(count.text!)! - (a + b + c + d))"
                
                }
                else{
                    error.text = "!"
                    count2 = count2 - 1
                    tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                }


                

        }
            

        else if count2 == 4{
                t1 = sender.tag
                if t1 > Int(count.text!)!{
                    error.text = "!"
                    count2 = count2 - 1
                }
                else{
            tx5.text="\(sender.tag)"
            if (tx1.text==tx5.text && tx1.text != count.text!) || (tx1.text == "-" && tx5.text == "0" ){
            
            tx5.text="\(sender.tag*50+50)"
            }
            else if tx1.text==tx5.text && tx1.text == count.text{
                
                tx5.text="\(sender.tag*100)"
            }
            else if tx1.text != tx5.text && tx5.text == "0" && tx1.text != "-"{
                tx5.text="||--||"
            }
            else {
                tx5.text="\(sender.tag*10)"
            }
        
        
            tx6.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
            info.text = ""
                
            }
                
        }

        else if count2 == 5{
                t2 = sender.tag
                if t1 + t2 > Int(count.text!)!{
                    error.text = "!"
                    count2 = count2 - 1
                }
                else{
            tx6.text="\(sender.tag)"
            if (tx2.text==tx6.text && tx2.text != count.text!) || (tx2.text == "-" && tx6.text == "0" ){
                
                tx6.text="\(sender.tag*50+50)"
            }
            else if tx2.text==tx6.text && tx2.text == count.text{
                
                tx6.text="\(sender.tag*100)"
            }
            else if tx2.text != tx6.text && tx6.text == "0" && tx2.text != "-"{
                tx6.text="||--||"
            }

            else {
                tx6.text="\(sender.tag*10)"
            }
            tx7.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
            info.text=""
                }
        }

        else if count2 == 6{
                t3 = sender.tag
                if t1+t2+t3 > Int(count.text!)!{
                    error.text = "!"
                    count2 = count2 - 1
                }
                else{
            tx7.text="\(sender.tag)"
            if (tx3.text==tx7.text && tx3.text != count.text!) || (tx3.text == "-" && tx7.text == "0" ){
                
                tx7.text="\(sender.tag*50+50)"
            }
            else if tx3.text==tx7.text && tx3.text == count.text{
                
                tx7.text="\(sender.tag*100)"
            }
            else if tx3.text != tx7.text && tx7.text == "0" && tx3.text != "-"{
                tx7.text="||--||"
            }

            else {
                tx7.text="\(sender.tag*10)"
                
            }

            tx8.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            error.text=""
                }
        }

        else if count2 == 7{
                t4 = sender.tag
                if t1+t2+t3+t4 != Int(count.text!)!{
                    error.text = "!"
                    count2 = count2 - 1
                }
                else{

            tx8.text="\(sender.tag)"
            if (tx4.text==tx8.text && tx4.text != count.text!) || (tx4.text == "-" && tx8.text == "0" ){
                
                tx8.text="\(sender.tag*50+50)"
            }
            else if tx4.text==tx8.text && tx4.text == count.text{
                
                tx8.text="\(sender.tag*100)"
            }
            else if tx4.text != tx8.text && tx8.text == "0" && tx4.text != "-"{
                tx8.text="||--||"
            }

            else {
                tx8.text="\(sender.tag*10)"
            }

            tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
           error.text=""
                }
         }
                
   }
            
            
            
            
            
            
            
            
            
            else if count3 % 4 == 2{
                if count2 == 3{
                    tx1.text="\(sender.tag)"
                    if tx1.text=="0"{
                        tx1.text="-"
                    }
                    tx6.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text = ""
                    
                    var a = 0
                    var b = 0
                    var c = 0
                    var d = 0
                    
                    if tx1.text == "-"{
                        a=0
                    }
                    else{
                        a = Int(tx1.text!)!
                    }
                    
                    if tx2.text == "-"{
                        b=0
                    }
                    else{
                        b = Int(tx2.text!)!
                    }
                    
                    if tx3.text == "-"{
                        c=0
                    }
                    else{
                        c = Int(tx3.text!)!
                    }
                    
                    if tx4.text == "-"{
                        d=0
                    }
                    else{
                        d = Int(tx4.text!)!
                    }
                    if (a + b + c + d) > Int(count.text!)! {
                        info.text = "წაგლეჯვაა \(abs(Int(count.text!)! - (a + b + c + d)))"
                    }
                    else if (a + b + c + d) < Int(count.text!)! {
                        info.text = "შეტენვაა \(Int(count.text!)! - (a + b + c + d))"
                        
                    }
                    else{
                        error.text = "!"
                        count2 = count2 - 1
                        tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                        tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    }

                    
                }
                    if count2 == 0{
                    tx2.text="\(sender.tag)"
                    if tx2.text=="0"{
                        tx2.text="-"
                    }
                    
                    tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                }
                else if count2 == 1{
                    tx3.text="\(sender.tag)"
                    if tx3.text=="0"{
                        tx3.text="-"
                    }
                    
                    tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                        error.text=""
                }
                    
                else if count2 == 2{
                    tx4.text="\(sender.tag)"
                    if tx4.text=="0"{
                        tx4.text="-"
                    }
                    
                    tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                        var a = 0
                        var b = 0
                        var c = 0
                        
                        if tx2.text == "-"{
                            a=0
                        }
                        else{
                            a = Int(tx2.text!)!
                        }
                        
                        if tx3.text == "-"{
                            b=0
                        }
                        else{
                            b = Int(tx3.text!)!
                        }
                        
                        if tx4.text == "-"{
                            c=0
                        }
                        else{
                            c = Int(tx4.text!)!
                        }
                        
                        
                        
                        
                        if Int(count.text!)! >= ( a + b + c) {
                            info.text = "\(Int(count.text!)! - (a + b + c))-ს გარდა"
                        }

                }
                    
                    
                else if count2 == 7{
                        t4 = sender.tag
                        if t1 + t2 + t3 + t4 != Int(count.text!)!{
                            error.text = "!"
                            count2 = count2 - 1
                        }
                        else{
                    tx5.text="\(sender.tag)"
                    if (tx1.text==tx5.text && tx1.text != count.text!) || (tx1.text == "-" && tx5.text == "0" ){
                        
                        tx5.text="\(sender.tag*50+50)"
                    }
                    else if tx1.text==tx5.text && tx1.text == count.text{
                        
                        tx5.text="\(sender.tag*100)"
                    }
                    else if tx1.text != tx5.text && tx5.text == "0" && tx1.text != "-"{
                        tx5.text="||--||"
                    }
                    else {
                        tx5.text="\(sender.tag*10)"
                    }
                    
                    
                    tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                        }
                }
                    
                else if count2 == 4{
                        
                        t1 = sender.tag
                        if t1 > Int(count.text!)!{
                            error.text = "!"
                            count2 = count2 - 1
                        }
                        else{

                        
                    tx6.text="\(sender.tag)"
                    if (tx2.text==tx6.text && tx2.text != count.text!) || (tx2.text == "-" && tx6.text == "0" ){
                        
                        tx6.text="\(sender.tag*50+50)"
                    }
                    else if tx2.text==tx6.text && tx2.text == count.text{
                        
                        tx6.text="\(sender.tag*100)"
                    }
                    else if tx2.text != tx6.text && tx6.text == "0" && tx2.text != "-"{
                        tx6.text="||--||"
                    }
                        
                    else {
                        tx6.text="\(sender.tag*10)"
                    }
                    tx7.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text=""
                        }
                }
                    
                else if count2 == 5{
                        t2 = sender.tag
                        if t1 + t2 > Int(count.text!)!{
                            error.text = "!"
                            count2 = count2 - 1
                        }
                        else{

                    tx7.text="\(sender.tag)"
                    if (tx3.text==tx7.text && tx3.text != count.text!) || (tx3.text == "-" && tx7.text == "0" ){
                        
                        tx7.text="\(sender.tag*50+50)"
                    }
                    else if tx3.text==tx7.text && tx3.text == count.text{
                        
                        tx7.text="\(sender.tag*100)"
                    }
                    else if tx3.text != tx7.text && tx7.text == "0" && tx3.text != "-"{
                        tx7.text="||--||"
                    }
                        
                    else {
                        tx7.text="\(sender.tag*10)"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text=""
                        }
                }
                    
                else if count2 == 6{
                        t3 = sender.tag
                        if t1 + t2 + t3 > Int(count.text!)!{
                            error.text = "!"
                            count2 = count2 - 1
                        }
                        else{
                    tx8.text="\(sender.tag)"
                    if (tx4.text==tx8.text && tx4.text != count.text!) || (tx4.text == "-" && tx8.text == "0" ){
                        
                        tx8.text="\(sender.tag*50+50)"
                    }
                    else if tx4.text==tx8.text && tx4.text == count.text{
                        
                        tx8.text="\(sender.tag*100)"
                    }
                    else if tx4.text != tx8.text && tx8.text == "0" && tx4.text != "-"{
                        tx8.text="||--||"
                    }
                        
                    else {
                        tx8.text="\(sender.tag*10)"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    tx5.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                        error.text=""
                    }
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
                
            else if count3 % 4 == 3{
                if count2 == 2{
                    tx1.text="\(sender.tag)"
                    if tx1.text=="0"{
                        tx1.text="-"
                    }
                    tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    var a = 0
                    var b = 0
                    var c = 0
                    
                    if tx1.text == "-"{
                        a=0
                    }
                    else{
                        a = Int(tx1.text!)!
                    }
                    
                    if tx3.text == "-"{
                        b=0
                    }
                    else{
                        b = Int(tx3.text!)!
                    }
                    
                    if tx4.text == "-"{
                        c=0
                    }
                    else{
                        c = Int(tx4.text!)!
                    }
                    
                    
                    
                    
                    if Int(count.text!)! >= ( a + b + c) {
                        info.text = "\(Int(count.text!)! - (a + b + c))-ს გარდა"
                    }

                }
                if count2 == 3{
                    tx2.text="\(sender.tag)"
                    if tx2.text=="0"{
                        tx2.text="-"
                    }
                    
                    tx7.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text = ""
                    
                    var a = 0
                    var b = 0
                    var c = 0
                    var d = 0
                    
                    if tx1.text == "-"{
                        a=0
                    }
                    else{
                        a = Int(tx1.text!)!
                    }
                    
                    if tx2.text == "-"{
                        b=0
                    }
                    else{
                        b = Int(tx2.text!)!
                    }
                    
                    if tx3.text == "-"{
                        c=0
                    }
                    else{
                        c = Int(tx3.text!)!
                    }
                    
                    if tx4.text == "-"{
                        d=0
                    }
                    else{
                        d = Int(tx4.text!)!
                    }
                    if (a + b + c + d) > Int(count.text!)! {
                        info.text = "წაგლეჯვაა \(abs(Int(count.text!)! - (a + b + c + d)))"
                    }
                    else if (a + b + c + d) < Int(count.text!)! {
                        info.text = "შეტენვაა \(Int(count.text!)! - (a + b + c + d))"
                        
                    }
                    else{
                        error.text = "!"
                        count2 = count2 - 1
                        tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                        tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    }

                    
                }
                else if count2 == 0{
                    tx3.text="\(sender.tag)"
                    if tx3.text=="0"{
                        tx3.text="-"
                    }
                    
                    tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                }
                    
                else if count2 == 1{
                    tx4.text="\(sender.tag)"
                    if tx4.text=="0"{
                        tx4.text="-"
                    }
                    
                    tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                }
                    
                    
                else if count2 == 6{
                    t3 = sender.tag
                    if t1 + t2 + t3 > Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    tx5.text="\(sender.tag)"
                    if (tx1.text==tx5.text && tx1.text != count.text!) || (tx1.text == "-" && tx5.text == "0" ){
                        
                        tx5.text="\(sender.tag*50+50)"
                    }
                    else if tx1.text==tx5.text && tx1.text == count.text{
                        
                        tx5.text="\(sender.tag*100)"
                    }
                    else if tx1.text != tx5.text && tx5.text == "0" && tx1.text != "-"{
                        tx5.text="||--||"
                    }
                    else {
                        tx5.text="\(sender.tag*10)"
                    }
                    
                    
                    tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    tx6.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    error.text=""
                    }
                }
                    
                else if count2 == 7{
                    t4 = sender.tag
                    if t1 + t2 + t3 + t4 != Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    tx6.text="\(sender.tag)"
                    if (tx2.text==tx6.text && tx2.text != count.text!) || (tx2.text == "-" && tx6.text == "0" ){
                        
                        tx6.text="\(sender.tag*50+50)"
                    }
                    else if tx2.text==tx6.text && tx2.text == count.text{
                        
                        tx6.text="\(sender.tag*100)"
                    }
                    else if tx2.text != tx6.text && tx6.text == "0" && tx2.text != "-"{
                        tx6.text="||--||"
                    }
                        
                    else {
                        tx6.text="\(sender.tag*10)"
                    }
                   
                    tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    }
                }
                    
                else if count2 == 4{
                    t1 = sender.tag
                    if t1 > Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    
                    tx7.text="\(sender.tag)"
                    if (tx3.text==tx7.text && tx3.text != count.text!) || (tx3.text == "-" && tx7.text == "0" ){
                        
                        tx7.text="\(sender.tag*50+50)"
                    }
                    else if tx3.text==tx7.text && tx3.text == count.text{
                        
                        tx7.text="\(sender.tag*100)"
                    }
                    else if tx3.text != tx7.text && tx7.text == "0" && tx3.text != "-"{
                        tx7.text="||--||"
                    }
                        
                    else {
                        tx7.text="\(sender.tag*10)"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text=""
                    }
                }
                    
                else if count2 == 5{
                    t2 = sender.tag
                    if t1 + t2 > Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    tx8.text="\(sender.tag)"
                    if (tx4.text==tx8.text && tx4.text != count.text!) || (tx4.text == "-" && tx8.text == "0" ){
                        
                        tx8.text="\(sender.tag*50+50)"
                    }
                    else if tx4.text==tx8.text && tx4.text == count.text{
                        
                        tx8.text="\(sender.tag*100)"
                    }
                    else if tx4.text != tx8.text && tx8.text == "0" && tx4.text != "-"{
                        tx8.text="||--||"
                    }
                        
                    else {
                        tx8.text="\(sender.tag*10)"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    tx5.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    error.text=""
                }
            }
        }


            
            
            
            
            
            
            
            
            
                
            else if count3 % 4 == 0{
                if count2 == 1{
                    tx1.text="\(sender.tag)"
                    if tx1.text=="0"{
                        tx1.text="-"
                    }
                    tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                }
                if count2 == 2{
                    tx2.text="\(sender.tag)"
                    if tx2.text=="0"{
                        tx2.text="-"
                    }
                    
                    tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    var a = 0
                    var b = 0
                    var c = 0
                    
                    if tx1.text == "-"{
                        a=0
                    }
                    else{
                        a = Int(tx1.text!)!
                    }
                    
                    if tx2.text == "-"{
                        b=0
                    }
                    else{
                        b = Int(tx2.text!)!
                    }
                    
                    if tx4.text == "-"{
                        c=0
                    }
                    else{
                        c = Int(tx4.text!)!
                    }
                    
                    
                    
                    
                    if Int(count.text!)! >= ( a + b + c) {
                        info.text = "\(Int(count.text!)! - (a + b + c))-ს გარდა"
                    }

                }
                else if count2 == 3{
                    tx3.text="\(sender.tag)"
                    if tx3.text=="0"{
                        tx3.text="-"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    info.text = ""
                    
                    var a = 0
                    var b = 0
                    var c = 0
                    var d = 0
                    
                    if tx1.text == "-"{
                        a=0
                    }
                    else{
                        a = Int(tx1.text!)!
                    }
                    
                    if tx2.text == "-"{
                        b=0
                    }
                    else{
                        b = Int(tx2.text!)!
                    }
                    
                    if tx3.text == "-"{
                        c=0
                    }
                    else{
                        c = Int(tx3.text!)!
                    }
                    
                    if tx4.text == "-"{
                        d=0
                    }
                    else{
                        d = Int(tx4.text!)!
                    }
                    if (a + b + c + d) > Int(count.text!)! {
                        info.text = "წაგლეჯვაა \(abs(Int(count.text!)! - (a + b + c + d)))"
                    }
                    else if (a + b + c + d) < Int(count.text!)! {
                        info.text = "შეტენვაა \(Int(count.text!)! - (a + b + c + d))"
                        
                    }
                    else{
                        error.text = "!"
                        count2 = count2 - 1
                        tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                        tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    }
                    

                    
                }
                    
                else if count2 == 0{
                    tx4.text="\(sender.tag)"
                    if tx4.text=="0"{
                        tx4.text="-"
                    }
                    
                    tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                }
                    
                    
                else if count2 == 5{
                    t2 = sender.tag
                    if t1 + t2 > Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    tx5.text="\(sender.tag)"
                    if (tx1.text==tx5.text && tx1.text != count.text!) || (tx1.text == "-" && tx5.text == "0" ){
                        
                        tx5.text="\(sender.tag*50+50)"
                    }
                    else if tx1.text==tx5.text && tx1.text == count.text{
                        
                        tx5.text="\(sender.tag*100)"
                    }
                    else if tx1.text != tx5.text && tx5.text == "0" && tx1.text != "-"{
                        tx5.text="||--||"
                    }
                    else {
                        tx5.text="\(sender.tag*10)"
                    }
                    
                    
                    tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    tx6.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    error.text=""
                    }
                }
                    
                else if count2 == 6{
                    t3 = sender.tag
                    if t1 + t2 + t3 > Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    tx6.text="\(sender.tag)"
                    if (tx2.text==tx6.text && tx2.text != count.text!) || (tx2.text == "-" && tx6.text == "0" ){
                        
                        tx6.text="\(sender.tag*50+50)"
                    }
                    else if tx2.text==tx6.text && tx2.text == count.text{
                        
                        tx6.text="\(sender.tag*100)"
                    }
                    else if tx2.text != tx6.text && tx6.text == "0" && tx2.text != "-"{
                        tx6.text="||--||"
                    }
                        
                    else {
                        tx6.text="\(sender.tag*10)"
                    }
                    
                    tx7.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)

                    tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    
                    error.text=""
                    }
                }
                    
                else if count2 == 7{
                    t4 = sender.tag
                    if t1 + t2 + t3 + t4 != Int(count.text!)!{
                        error.text = "!"
                        count2 = count2 - 1
                    }
                    else{
                    
                    tx7.text="\(sender.tag)"
                    if (tx3.text==tx7.text && tx3.text != count.text!) || (tx3.text == "-" && tx7.text == "0" ){
                        
                        tx7.text="\(sender.tag*50+50)"
                    }
                    else if tx3.text==tx7.text && tx3.text == count.text{
                        
                        tx7.text="\(sender.tag*100)"
                    }
                    else if tx3.text != tx7.text && tx7.text == "0" && tx3.text != "-"{
                        tx7.text="||--||"
                    }
                        
                    else {
                        tx7.text="\(sender.tag*10)"
                    }
                    
                    
                    tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    error.text=""
                    }
                }
                    
                else if count2 == 4{
                    t1 = sender.tag
                    if t1 > Int(count.text!)!{
                        error.text = "!"
                        
                    }
                    else{
                    tx8.text="\(sender.tag)"
                    if (tx4.text==tx8.text && tx4.text != count.text!) || (tx4.text == "-" && tx8.text == "0" ){
                        
                        tx8.text="\(sender.tag*50+50)"
                    }
                    else if tx4.text==tx8.text && tx4.text == count.text{
                        
                        tx8.text="\(sender.tag*100)"
                    }
                    else if tx4.text != tx8.text && tx8.text == "0" && tx4.text != "-"{
                        tx8.text="||--||"
                    }
                        
                    else {
                        tx8.text="\(sender.tag*10)"
                    }
                    
                    tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
                    tx5.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
                    error.text=""
                    info.text=""
                    }
                }
                

            }
            

            
            
            
            
            
            
            
            
            
            
        
        count2=count2+1
        
        if count2==9{
            error.text="!"
           }
    }
}
    
    var x1 = ""
    var x2 = ""
    var x3 = ""
    var x4 = ""
    var x5 = ""
    var x6 = ""
    var x7 = ""
    var x8 = ""
    
    var y1 = 0
    var y2 = 0
    var y3 = 0
    var y4 = 0
    var y5 = 0
    var y6 = 0
    var y7 = 0
    var y8 = 0
    

    var count3 = 1
    
    
    
    @IBAction func washla(_ sender: UIButton) {
        count2 = 0
        tx1.text = ""
        tx2.text = ""
        tx3.text = ""
        tx4.text = ""
        tx5.text = ""
        tx6.text = ""
        tx7.text = ""
        tx8.text = ""
        
        if count3%4==1{
        tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
        tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        }
        else if count3%4==2{
            tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        }
        else if count3%4==3{
            tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        }
        else if count3%4==0{
            tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        }


    }
    
    
    
    /*func checksegments(segment: Int, mytext: String, countText: String )->Int  {
        
        var tmp:Int=0
        
        if segment==0 && mytext=="||--||"{
            tmp = -200
            
        }
            
        else if segment==1 && mytext=="||--||" && Int(countText)!<9{
            tmp = -200
            
            
        }
            
        else if segment==1 && mytext=="||--||" && Int(countText)!==9{
            tmp = -200
            
        }
        
        return tmp
    }
    
    */
    
    
    
    
    
    func premiidanMoshla (_ before: inout [Int] , after: inout [Int] , name: UILabel){
        
        if after[count3-1] == -200 || ( before[count3-1]*50+50 != after[count3-1] && before[count3-1]*100 != after[count3-1] ) {
            
           
            name.textColor=UIColor.white
        }
    }

    
    
    
    
    
    func premia (_ after1: inout [Int], after2 : inout [Int] , after3 :  inout [Int] , after4 : inout [Int] ,   begin: Int,  end: Int ) {
        
        
        //premiaze gasule emateba maqsimumi
            var max = 0
            var mybegin = begin
            while mybegin<end {
            
               if max < after1[mybegin]
               {
                max = after1[mybegin]
                
                }
                
                mybegin = mybegin + 1
            }
            
            after1[end] = after1[end] + max
        
        mybegin = begin
        max = 0
        // meore motamashes eshleba maqsimumi
        
        while mybegin<end {
            
            if max < after2[mybegin]
            {
                max = after2[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after2[end] = after2[end] - max
        
        mybegin = begin
        
        max = 0
        // mesame motamashes eshleba maqsimumi
        
        while mybegin<end {
            
            if max < after3[mybegin]
            {
                max = after3[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after3[end] = after3[end] - max
        
        mybegin = begin
        
        max = 0
        // meotxe motamashes eshleba maqsimumi
        
        while mybegin<end {
            
            if max < after4[mybegin]
            {
                max = after4[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after4[end] = after4[end] - max
        
        


        
    }
    
    
    
    func premia2 (_ after1: inout [Int], after2 : inout [Int] , begin: Int,  end: Int ) {
        
        
        //premiaze gasule emateba maqsimumi
        var max = 0
        var mybegin = begin
        while mybegin<end {
            
            if max < after1[mybegin]
            {
                max = after1[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after1[end] = after1[end] + max
        
        mybegin = begin
        max = 0

        while mybegin<end {
            
            if max < after2[mybegin]
            {
                max = after2[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after2[end] = after2[end] + max
        
     
        
    }
    
    
    
    
    func premia3 (_ after1: inout [Int], after2 : inout [Int] , after3: inout [Int], begin: Int,  end: Int ) {
        
        
        //premiaze gasule emateba maqsimumi
        var max = 0
        var mybegin = begin
        while mybegin<end {
            
            if max < after1[mybegin]
            {
                max = after1[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after1[end] = after1[end] + max
        
        mybegin = begin
        max = 0
        
        while mybegin<end {
            
            if max < after2[mybegin]
            {
                max = after2[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after2[end] = after2[end] + max
        mybegin = begin
        max = 0
        
        
        
        while mybegin<end {
            
            if max < after3[mybegin]
            {
                max = after3[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after3[end] = after3[end] + max
        
        
    }
    
    
    
    
    
    
    //premia parebshi 
    
    func premiaParebi (_ after1: inout [Int], after2 : inout [Int] , begin: Int,  end: Int ) {
        
        
        //premiaze gasule emateba maqsimumi
        var max = 0
        var mybegin = begin
        while mybegin<end {
            
            if max < after1[mybegin]
            {
                max = after1[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after1[end] = after1[end] + max
        
        mybegin = begin
        max = 0
        
        while mybegin<end {
            
            if max < after2[mybegin]
            {
                max = after2[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after2[end] = after2[end] - max
        
        
        
    }
    
    
    
    func premiaParebi1 (_ after1: inout [Int], after2 : inout [Int] , after3 : inout [Int] , after4 : inout [Int] , begin: Int,  end: Int ) {
        
        
        //premiaze gasule emateba maqsimumi
        var max = 0
        var mybegin = begin
        while mybegin<end {
            
            if max < after1[mybegin]
            {
                max = after1[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after1[end] = after1[end] + max
        
        mybegin = begin
        max = 0
        
        while mybegin<end {
            
            if max < after2[mybegin]
            {
                max = after2[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after2[end] = after2[end] + max
        
        mybegin = begin
        max = 0
        
        
        while mybegin<end {
            
            if max < after3[mybegin]
            {
                max = after3[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after3[end] = after3[end] - max
        
        mybegin = begin
        max = 0
        
        
        while mybegin<end {
            
            if max < after4[mybegin]
            {
                max = after4[mybegin]
                
            }
            
            mybegin = mybegin + 1
        }
        
        after4[end] = after4[end] - max
        
    }
    


    
    
    
    
    @IBAction func cxrili(_ sender: UIButton) {
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller2 = segue.destination as? ViewController3 else {
            return
        }
        controller2.name1string=name1label.text!
        controller2.name2string=name2label.text!
        controller2.name3string=name3label.text!
        controller2.name4string=name4label.text!
      
        controller2.p1b = p1.before
        controller2.p1a = p1.after
        controller2.p2b = p2.before
        controller2.p2a = p2.after
        controller2.p3b = p3.before
        controller2.p3a = p3.after
        controller2.p4b = p4.before
        controller2.p4a = p4.after
        
        controller2.zparebi=yparebi
        
        
    }
    
    
    
    
    
    func sum (_ after: [Int]) -> Int {
        var a = 0
        for i in after{
            a=a+i
        }
            return a
        }
    

    
    @IBAction func next (_ sender: UIButton) {
        
        
       
        if count2<8{
            error.text="!"
        }
        else{
            if tx1.text=="-"{
                x1="0"
                y1=Int(x1)!
            }
            
                        else{
            x1=tx1.text!
            y1=Int(x1)!
            }
            
            if ysegment==0 && tx5.text=="||--||"{
                x5="-200"
                y5=Int(x5)!
            }
            else if ysegment==1 && tx5.text!=="||--||" && Int(count.text!)!<9{
                x5="-200"
                y5=Int(x5)!
            }
            else if ysegment==1 && tx5.text!=="||--||" && Int(count.text!)!==9{
                x5="-500"
                y5=Int(x5)!
            }
            else if ysegment == 2 && tx5.text == "||--||" {
                x5=count.text!
                y5=Int(x5)! * (-100)
            }

            else{
            x5=tx5.text!
            y5=Int(x5)!
            }
            
            
            
            
            
            if tx2.text=="-"{
                x2="0"
                y2=Int(x2)!
            }
                
            else{
            x2=tx2.text!
            y2=Int(x2)!
            }
            
            
            
            
            
            if ysegment==0 && tx6.text=="||--||"{
                x6="-200"
                y6=Int(x6)!
            }
            else if ysegment==1 && tx6.text!=="||--||" && Int(count.text!)!<9{
                x6="-200"
                y6=Int(x6)!
            }
            else if ysegment==1 && tx6.text!=="||--||" && Int(count.text!)!==9{
                x6="-500"
                y6=Int(x6)!
            }
            else if ysegment == 2 && tx6.text == "||--||" {
                x6=count.text!
                y6=Int(x6)! * (-100)
            }
                
            else{
                x6=tx6.text!
                y6=Int(x6)!
            }
            
            
            
            
            
            if tx3.text=="-"{
                x3="0"
                y3=Int(x3)!
            }
            else{
            x3=tx3.text!
            y3=Int(x3)!
            }
            
            
            
            
            if ysegment==0 && tx7.text=="||--||"{
                x7="-200"
                y7=Int(x7)!
            }
            else if ysegment==1 && tx7.text!=="||--||" && Int(count.text!)!<9{
                x7="-200"
                y7=Int(x7)!
            }
            else if ysegment==1 && tx7.text!=="||--||" && Int(count.text!)!==9{
                x7="-500"
                y7=Int(x7)!
            }
            else if ysegment == 2 && tx7.text == "||--||" {
                x7=count.text!
                y7=Int(x7)! * (-100)
            }
                
            else{
                x7=tx7.text!
                y7=Int(x7)!
            }
            
            

            
            
            
            if tx4.text=="-"{
                x4="0"
                y4=Int(x4)!
            }
            else{

            x4=tx4.text!
            y4=Int(x4)!
            }
            
            
            
            
            
            
            if ysegment==0 && tx8.text=="||--||"{
                x8="-200"
                
                y8=Int(x8)!
            }
            else if ysegment==1 && tx8.text!=="||--||" && Int(count.text!)!<9{
                x8="-200"
                y8=Int(x8)!
            }
            else if ysegment==1 && tx8.text!=="||--||" && Int(count.text!)!==9{
                x8="-500"
                y8=Int(x8)!
            }
            else if ysegment == 2 && tx8.text == "||--||" {
                x8=count.text!
                y8=Int(x8)! * (-100)
            }
                
            else{
                x8=tx8.text!
                y8=Int(x8)!
            }

            
            
            //masivis shevseba
            
            
            p1.full(y1, b: y5)
            p2.full(y2, b: y6)
            p3.full(y3, b: y7)
            p4.full(y4, b: y8)
            
            
            
           
            premiidanMoshla(&p1.before, after: &p1.after, name: name1label)
            premiidanMoshla(&p2.before, after: &p2.after, name: name2label)
            premiidanMoshla(&p3.before, after: &p3.after, name: name3label)
            premiidanMoshla(&p4.before, after: &p4.after, name: name4label)
            
            
            
            
            //premia parebis gareshe
            
            if yparebi == 0 {
            
            //premiaze gasvlis punqciis gamodzaxeba I pulka
            
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p1.after, after2: &p2.after, after3: &p3.after, after4: &p4.after, begin: 0, end: 7)
            }
            
            if count3==8 && name2label.textColor==UIColor.green && name1label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p2.after, after2: &p1.after, after3: &p3.after, after4: &p4.after, begin: 0, end: 7)
            }

            if count3==8 && name3label.textColor==UIColor.green && name2label.textColor != UIColor.green && name1label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p3.after, after2: &p2.after, after3: &p1.after, after4: &p4.after, begin: 0, end: 7)
            }

            if count3==8 && name4label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name1label.textColor != UIColor.green{
                premia(&p4.after, after2: &p2.after, after3: &p3.after, after4: &p1.after, begin: 0, end: 7)
            }
            
            
            
            
            //premiaze gasvlis punqciis gamodzaxeba II pulka
            
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p1.after, after2: &p2.after, after3: &p3.after, after4: &p4.after, begin: 8, end: 11)
            }
            
            if count3==12 && name2label.textColor==UIColor.green && name1label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p2.after, after2: &p1.after, after3: &p3.after, after4: &p4.after, begin: 8, end: 11)
            }
            
            if count3==12 && name3label.textColor==UIColor.green && name2label.textColor != UIColor.green && name1label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p3.after, after2: &p2.after, after3: &p1.after, after4: &p4.after, begin: 8, end: 11)
            }
            
            if count3==12 && name4label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name1label.textColor != UIColor.green{
                premia(&p4.after, after2: &p2.after, after3: &p3.after, after4: &p1.after, begin: 8, end: 11)
            }

            
            
            
            
            //premiaze gasvlis punqciis gamodzaxeba III pulka
            
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p1.after, after2: &p2.after, after3: &p3.after, after4: &p4.after, begin: 12, end: 19)
            }
            
            if count3==20 && name2label.textColor==UIColor.green && name1label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p2.after, after2: &p1.after, after3: &p3.after, after4: &p4.after, begin: 12, end: 19)
            }
            
            if count3==20 && name3label.textColor==UIColor.green && name2label.textColor != UIColor.green && name1label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p3.after, after2: &p2.after, after3: &p1.after, after4: &p4.after, begin: 12, end: 19)
            }
            
            if count3==20 && name4label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name1label.textColor != UIColor.green{
                premia(&p4.after, after2: &p2.after, after3: &p3.after, after4: &p1.after, begin: 12, end: 19)
            }

            
            //premiaze gasvlis punqciis gamodzaxeba IV pulka
            
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p1.after, after2: &p2.after, after3: &p3.after, after4: &p4.after, begin: 20, end: 23)
            }
            
            if count3==24 && name2label.textColor==UIColor.green && name1label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p2.after, after2: &p1.after, after3: &p3.after, after4: &p4.after, begin: 20, end: 23)
            }
            
            if count3==24 && name3label.textColor==UIColor.green && name2label.textColor != UIColor.green && name1label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia(&p3.after, after2: &p2.after, after3: &p1.after, after4: &p4.after, begin: 20, end: 23)
            }
            
            if count3==24 && name4label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name1label.textColor != UIColor.green{
                premia(&p4.after, after2: &p2.after, after3: &p3.after, after4: &p1.after, begin: 20, end: 23)
            }
            
            
            // tu 2 kaci gavida  premiaze I pulka
            
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p2.after, begin: 0, end: 7)
            }
            
            
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p3.after, begin: 0, end: 7)
            }
            
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p1.after, after2: &p4.after, begin: 0, end: 7)
            }
            if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p2.after, after2: &p3.after, begin: 0, end: 7)
            }
            
            if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p2.after, after2: &p4.after, begin: 0, end: 7)
            }
            if count3==8 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p3.after, after2: &p4.after, begin: 0, end: 7)
            }
            

            
              // tu 2 kaci gavida  premiaze II pulka

            
            
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p2.after, begin: 8, end: 11)
            }
            
            
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p3.after, begin: 8, end: 11)
            }
            
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p1.after, after2: &p4.after, begin: 8, end: 11)
            }
            if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p2.after, after2: &p3.after, begin: 8, end: 11)
            }
            
            if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p2.after, after2: &p4.after, begin: 8, end: 11)
            }
            if count3==12 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p3.after, after2: &p4.after, begin: 8, end: 11)
            }

            
            
            
            // tu 2 kaci gavida  premiaze III pulka
            
            
            
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p2.after, begin: 12, end: 19)
            }
            
            
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p3.after, begin: 12, end: 19)
            }
            
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p1.after, after2: &p4.after, begin: 12, end: 19)
            }
            if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p2.after, after2: &p3.after, begin: 12, end: 19)
            }
            
            if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p2.after, after2: &p4.after, begin: 12, end: 19)
            }
            if count3==20 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p3.after, after2: &p4.after, begin: 12, end: 19)
            }
            
            
            
            
            
            // tu 2 kaci gavida  premiaze IV pulka
            
            
            
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p2.after, begin: 20, end: 23)
            }
            
            
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p1.after, after2: &p3.after, begin: 20, end: 23)
            }
            
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p1.after, after2: &p4.after, begin: 20, end: 23)
            }
            if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia2(&p2.after, after2: &p3.after, begin: 20, end: 23)
            }
            
            if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p2.after, after2: &p4.after, begin: 20, end: 23)
            }
            if count3==24 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia2(&p3.after, after2: &p4.after, begin: 20, end: 23)
            }

        }
                
                
                
                //parebshi
            
            else if yparebi == 1{
                
                // tu erti kaci gavida premiaze I pulka
                
                if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p1.after, after2: &p4.after, begin: 0, end: 7)
                }
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p2.after, after2: &p1.after, begin: 0, end: 7)
                }
                
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p3.after, after2: &p2.after, begin: 0, end: 7)
                }
                
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi(&p4.after, after2: &p3.after, begin: 0, end: 7)
                }
                
                
                
                
                // tu erti kaci gavida premiaze II pulka
                
                if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p1.after, after2: &p4.after, begin: 8, end: 11)
                }
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p2.after, after2: &p1.after, begin: 8, end: 11)
                }
                
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p3.after, after2: &p2.after, begin: 8, end: 11)
                }
                
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi(&p4.after, after2: &p3.after, begin: 8, end: 11)
                    
                
                }
                
                
                
                // tu erti kaci gavida premiaze III pulka
                
                if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p1.after, after2: &p4.after, begin: 12, end: 19)
                }
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p2.after, after2: &p1.after, begin: 12, end: 19)
                }
                
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p3.after, after2: &p2.after, begin: 12, end: 19)
                }
                
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi(&p4.after, after2: &p3.after, begin: 12, end: 19)
                }
                
                
                // tu erti kaci gavida premiaze IV pulka
                
                if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p1.after, after2: &p4.after, begin: 20, end: 23)
                }
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p2.after, after2: &p1.after, begin: 20, end: 23)
                }
                
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi(&p3.after, after2: &p2.after, begin: 20, end: 23)
                }
                
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi(&p4.after, after2: &p3.after, begin: 2, end: 23)
                }



                
                
                
                
                
                
                // tu 2 kaci gavida premiaze erti da igive paris wevrebi I pulka
                
                if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                   premiaParebi1(&p1.after, after2: &p3.after, after3: &p2.after, after4: &p4.after, begin: 0, end: 7)
                }
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi1(&p2.after, after2: &p4.after, after3: &p1.after, after4: &p3.after, begin: 0, end: 7)
                }
                
                
                // tu 2 kaci gavida premiaze erti da igive paris wevrebi II pulka
                
                if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi1(&p1.after, after2: &p3.after, after3: &p2.after, after4: &p4.after, begin: 8, end: 11)
                }
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi1(&p2.after, after2: &p4.after, after3: &p1.after, after4: &p3.after, begin: 8, end: 11)
                }
                
                
                
                
                // tu 2 kaci gavida premiaze erti da igive paris wevrebi III pulka
                
                if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi1(&p1.after, after2: &p3.after, after3: &p2.after, after4: &p4.after, begin: 12, end: 19)
                }
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi1(&p2.after, after2: &p4.after, after3: &p1.after, after4: &p3.after, begin: 12, end: 19)
                }

                
                
                
                
                // tu 2 kaci gavida premiaze erti da igive paris wevrebi IV pulka
                
                if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premiaParebi1(&p1.after, after2: &p3.after, after3: &p2.after, after4: &p4.after, begin: 20, end: 23)
                }
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premiaParebi1(&p2.after, after2: &p4.after, after3: &p1.after, after4: &p3.after, begin: 20, end: 23)
                }


                
                
                // tu 2 kaci gavida premiaze sxvadasxva parebidan I pulka
                
                if count3==8 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p1.after, after2: &p2.after, begin: 0, end: 7)
                }
                
                if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p1.after, after2: &p4.after, begin: 0, end: 7)
                }
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p2.after, after2: &p3.after, begin: 0, end: 7)
                }
                
                if count3==8 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p3.after, after2: &p4.after, begin: 0, end: 7)
                }
                
                
                
                
                // tu 2 kaci gavida premiaze sxvadasxva parebidan II pulka
                
                if count3==12 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p1.after, after2: &p2.after, begin: 8, end: 11)
                }
                
                if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p1.after, after2: &p4.after, begin: 8, end: 11)
                }
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p2.after, after2: &p3.after, begin: 8, end: 11)
                }
                
                if count3==12 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p3.after, after2: &p4.after, begin: 8, end: 11)
                }

                
                
                
                
                // tu 2 kaci gavida premiaze sxvadasxva parebidan III pulka
                
                if count3==20 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p1.after, after2: &p2.after, begin: 12, end: 19)
                }
                
                if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p1.after, after2: &p4.after, begin: 12, end: 19)
                }
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p2.after, after2: &p3.after, begin: 12, end: 19)
                }
                
                if count3==20 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p3.after, after2: &p4.after, begin: 12, end: 19)
                }

                
                
                
                
                // tu 2 kaci gavida premiaze sxvadasxva parebidan IV pulka
                
                if count3==24 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p1.after, after2: &p2.after, begin: 20, end: 23)
                }
                
                if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p1.after, after2: &p4.after, begin: 20, end: 23)
                }
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                    premia2(&p2.after, after2: &p3.after, begin: 20, end: 23)
                }
                
                if count3==24 && name1label.textColor != UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                    premia2(&p3.after, after2: &p4.after, begin: 20, end: 23)
                }

                
                
                
                
    }
            
            
            
            
            
            
            
            
            
            // tu 3 kaci gavida  premiaze I pulka
            
            
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p3.after, begin: 0, end: 7)
            }
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p4.after, begin: 0, end: 7)
            }
            if count3==8 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p3.after, after3: &p4.after, begin: 0, end: 7)
            }
            if count3==8 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p2.after, after2: &p3.after, after3: &p4.after, begin: 0, end: 7)
            }
            
            
            
            
            // tu 3 kaci gavida  premiaze II pulka
            
            
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p3.after, begin: 8, end: 11)
            }
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p4.after, begin: 8, end: 11)
            }
            if count3==12 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p3.after, after3: &p4.after, begin: 8, end: 11)
            }
            if count3==12 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p2.after, after2: &p3.after, after3: &p4.after, begin: 8, end: 11)
            }

            
            
            
            // tu 3 kaci gavida  premiaze III pulka
            
            
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p3.after, begin: 20, end: 23)
            }
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p4.after, begin: 20, end: 23)
            }
            if count3==24 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p3.after, after3: &p4.after, begin: 20, end: 23)
            }
            if count3==24 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p2.after, after2: &p3.after, after3: &p4.after, begin: 20, end: 23)
            }

            
            
            
            
            
            // tu 3 kaci gavida  premiaze IV pulka
            
            
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor != UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p3.after, begin: 12, end: 19)
            }
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor == UIColor.green && name3label.textColor != UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p2.after, after3: &p4.after, begin: 12, end: 19)
            }
            if count3==20 && name1label.textColor==UIColor.green && name2label.textColor != UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p1.after, after2: &p3.after, after3: &p4.after, begin: 12, end: 19)
            }
            if count3==20 && name1label.textColor != UIColor.green && name2label.textColor == UIColor.green && name3label.textColor == UIColor.green && name4label.textColor == UIColor.green{
                premia3(&p2.after, after2: &p3.after, after3: &p4.after, begin: 12, end: 19)
            }

            
            
            
            
            

            
            
            if count3==8{
                name1label.textColor=UIColor.green
                name2label.textColor=UIColor.green
                name3label.textColor=UIColor.green
                name4label.textColor=UIColor.green
            }
            else if count3==12{
                name1label.textColor=UIColor.green
                name2label.textColor=UIColor.green
                name3label.textColor=UIColor.green
                name4label.textColor=UIColor.green
            }
            else if count3==20{
                name1label.textColor=UIColor.green
                name2label.textColor=UIColor.green
                name3label.textColor=UIColor.green
                name4label.textColor=UIColor.green
            }


            
            
           
            
            
        error.text=""
        tx1.text=""
        tx2.text=""
        tx3.text=""
        tx4.text=""
        tx5.text=""
        tx6.text=""
        tx7.text=""
        tx8.text=""
            
            
            
            
        count2=0
            
            
            
            
            
            
            
            
            
            if count3 < 8{
                count.text="\(p1.after.count+1)"
                
            }
            
            else if count3>=8 && count3<=11{
                count.text="9"
                
            }
           
            
            else if count3 > 11 && count3 < 20{
                count.text = "\(20 - p1.after.count)"
               
                
            }
            else {
                count.text = "9"
              
            }
            
            
            
            
            
            count3 = count3 + 1
            
            
            
                     
            
            
            
            if count3%4==1{
                
                tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            }
            else if count3%4==2{
                
                tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            }
            else if count3%4==3{
                
                tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            }
            else if count3%4==0{
                
                tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            }

            ragaca()
            
            
        }
    }
    
    func ragaca (){
        
        
        
        if count3%4==2{
            img1.image=UIImage(named: "arrow")
            img4.image=UIImage(named: "")
        }
        else if count3%4==3{
            img2.image=UIImage(named: "arrow")
            img1.image=UIImage(named: "")
        }
        else if count3%4==0{
            img3.image=UIImage(named: "arrow")
            img2.image=UIImage(named: "")
        }
        else if count3%4==1{
            img4.image=UIImage(named: "arrow")
            img3.image=UIImage(named: "")
        }
        
        
        if yparebi==0{
            l1.text="\(Double(sum(p1.after))/100)"
            l2.text="\(Double(sum(p2.after))/100)"
            l3.text="\(Double(sum(p3.after))/100)"
            l4.text="\(Double(sum(p4.after))/100)"
        }
        else {
            l1.text="\(Double(sum(p1.after))/100) / \((Double(sum(p1.after))/100) + (Double(sum(p3.after))/100))"
            l2.text="\(Double(sum(p2.after))/100) / \((Double(sum(p2.after))/100) + (Double(sum(p4.after))/100)) "
            l3.text="\(Double(sum(p3.after))/100)"
            l4.text="\(Double(sum(p4.after))/100)"
        }
        
        
        //damtavreba
        if count3 == 25{
            performSegue(withIdentifier: "segue2", sender: self)
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return false
    }
}





    

