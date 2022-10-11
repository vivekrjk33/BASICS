//
//  ColorTransferDelegate.swift
//  ProtocolsDelegates
//
//  Created by Mac Mini on 31/01/22.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withName colorName : String)
}
