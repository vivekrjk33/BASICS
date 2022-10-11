//
//  NewsTableViewCell.swift
//  185 News
//
//  Created by Mac Mini on 04/05/22.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var authorNameLbl: UILabel!
    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
