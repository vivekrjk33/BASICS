//
//  ViewController.swift
//  188 NewsApi
//
//  Created by Mac Mini on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    var arr = [NewsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchData()
    }


    func fetchData() {
        let url = URL(string: "http://www.stackoverflow.com")!

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
        }

        task.resume()
        
        
    }
    
    
}

