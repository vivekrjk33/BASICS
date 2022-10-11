//
//  DataViewController.swift
//  collection
//
//  Created by Vivek on 29/07/22.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var imageData: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
   
    var value1 : ProductList!=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageData.image = value1.imageValue
        nameLabel.text = value1.nameValue
    }
    

}
