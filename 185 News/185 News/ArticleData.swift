//
//  ArticleData.swift
//  185 News
//
//  Created by Mac Mini on 04/05/22.
//

import Foundation

struct ArticleData:Codable {
    
    let title:String
    let urlToImage:String
    let author:String?
    let content:String
}
