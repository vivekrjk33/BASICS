//
//  ViewController.swift
//  ProtocolsDelegates
//
//  Created by Mac Mini on 31/01/22.
//

import UIKit

class ColorPresentedVC: UIViewController, ColorTransferDelegate {
    
    
    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorVC"{
            guard let colorPickerVC = segue.destination as? ColorPickerVC else{return}
            colorPickerVC.delegate = self
        }
    }

}

