//
//  ViewController.swift
//  AutoLayOut
//
//  Created by Mac Mini on 12/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtFieldNum1: UITextField!
    @IBOutlet weak var txtFiledNum2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSubmit(_ sender: Any) {
        
      
        let num1 = Int(txtFieldNum1.text!)
        let num2 = Int(txtFiledNum2.text!)
        
        let result = num1! * num2!
        
        print(result)
        
        lblResult.text = String(result)


    }
    
  
    
}

