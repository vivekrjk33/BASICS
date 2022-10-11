//
//  ViewController.swift
//  Auto_Login_User
//
//  Created by Mac Mini on 20/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDetail = UserDefaults.standard.value(forKey: "username")
        if userDetail != nil{
            
            txtUsername.text! = UserDefaults.standard.value(forKey: "username") as! String
            txtPassword.text! = UserDefaults.standard.value(forKey: "password") as! String
    }

    }
    @IBAction func btnSave(_ sender: Any) {
        
        let alert = UIAlertController(title: "User_Detail_Save", message: "Do you want to save or not", preferredStyle: .alert)
        let yesButton = UIAlertAction(title: "Yes", style: .default) { (action) in
            
            UserDefaults.standard.set(self.txtUsername.text!, forKey: "username")
            UserDefaults.standard.set(self.txtPassword.text!, forKey: "password")
            self.performSegue(withIdentifier: "segue1", sender: self)
        }
        let noButton = UIAlertAction(title: "No", style: .default) { (action) in
            
            print("User data is not saved")
            self.performSegue(withIdentifier: "segue1", sender: self)
        }
        
        alert.addAction(yesButton)
        alert.addAction(noButton)
        present(alert, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1"{
            
            let desVC = segue.destination as! HomeViewController
            desVC.dataPass = "Hello, \(txtUsername.text!)"
        }
    }
}

