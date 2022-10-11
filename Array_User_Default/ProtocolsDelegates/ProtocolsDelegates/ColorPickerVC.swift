//
//  ColorPickerVC.swift
//  ProtocolsDelegates
//
//  Created by Mac Mini on 31/01/22.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate : ColorTransferDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func colorBtnWasPressed(sender : UIButton) {
        print(sender.titleLabel?.text)
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
    }
}
