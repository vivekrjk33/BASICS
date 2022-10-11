//
//  HomeViewController.swift
//  Auto_Login_User
//
//  Created by Mac Mini on 20/04/22.
//

import UIKit

class HomeViewController: UIViewController {

    var dataPass:String = ""
    
    @IBOutlet weak var lblUserDetail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lblUserDetail.text! = dataPass
    }
    

}
