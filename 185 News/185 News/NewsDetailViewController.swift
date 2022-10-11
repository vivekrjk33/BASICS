//
//  NewsDetailViewController.swift
//  185 News
//
//  Created by Mac Mini on 04/05/22.
//

import UIKit

class NewsDetailViewController: UIViewController {

    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
   
    var articleDetails:ArticleData = ArticleData(title: "", urlToImage: "", author: "", content: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTitle.text = articleDetails.title
        contentLbl.text = articleDetails.content
        let url = URL(string: articleDetails.urlToImage)
        newsImg.downloadImage(from: url!)
    }


}
