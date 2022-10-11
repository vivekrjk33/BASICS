//
//  UniversityTableViewCell.swift
//  183 fetch data from webapi custom table view
//
//  Created by Mac Mini on 04/05/22.
//

import UIKit

class UniversityTableViewCell: UITableViewCell {

    @IBOutlet weak var websiteLbl: UILabel!
    @IBOutlet weak var universityLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
