//
//  ViewController3.swift
//  Jocker
//
//  Created by Mac05 on 12/27/16.
//  Copyright © 2016 Mac01. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

  
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var name4: UILabel!
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l8: UILabel!
    
    @IBOutlet weak var sum1: UILabel!
    @IBOutlet weak var sum2: UILabel!
    @IBOutlet weak var sum3: UILabel!
    @IBOutlet weak var sum4: UILabel!
    
    
    var zparebi = 0
    
    
    var name1string = ""
    var name2string = ""
    var name3string = ""
    var name4string = ""
    
    
    var p1b = [Int]()
    var p1a = [Int]()
    var p2b = [Int]()
    var p2a = [Int]()
    var p3b = [Int]()
    var p3a = [Int]()
    var p4b = [Int]()
    var p4a = [Int]()
    
    
    func sum (_ after: [Int]) -> Int {
        var a = 0
        for i in after{
            a=a+i
        }
        return a
    }

    
    func p (_ array : NSArray , label: UILabel){
        for i in array{
            label.text = label.text! + "\(i)     "
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name1.text=name1string
        name2.text=name2string
        name3.text=name3string
        name4.text=name4string
        
        
        p(p1b as NSArray, label: l1)
        p(p2b as NSArray, label: l2)
        p(p3b as NSArray, label: l3)
        p(p4b as NSArray, label: l4)
        p(p1a as NSArray, label: l5)
        p(p2a as NSArray, label: l6)
        p(p3a as NSArray, label: l7)
        p(p4a as NSArray, label: l8)
        
        
        
        if zparebi==0{
            sum1.text="\(Double(sum(p1a))/100)"
            sum2.text="\(Double(sum(p2a))/100)"
            sum3.text="\(Double(sum(p3a))/100)"
            sum4.text="\(Double(sum(p4a))/100)"
        }
        else {
            sum1.text="\(Double(sum(p1a))/100) / \((Double(sum(p1a))/100) + (Double(sum(p3a))/100))"
            sum2.text="\(Double(sum(p2a))/100) / \((Double(sum(p2a))/100) + (Double(sum(p4a))/100)) "
            sum3.text="\(Double(sum(p3a))/100)"
            sum4.text="\(Double(sum(p4a))/100)"
        }

        
     
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}
