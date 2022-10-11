//
//  ViewController.swift
//  185 News
//
//  Created by Mac Mini on 04/05/22.
//

import UIKit

class ViewController: UIViewController {

    var articleList = [ArticleData]()
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
    }

    func fetchData() {
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2022-04-04&sortBy=publishedAt&apiKey=8c62c77fc9724647b76013f035ace8de")
        URLSession.shared.dataTask(with: url!) { data, response, error in
        guard let data = data , error == nil else {
                print("Error occuring while ccessing the dat from api")
                return
            }
            var newsFullList:NewsData?
            do {
                
                newsFullList = try JSONDecoder().decode(NewsData.self, from: data)
                
            }
            catch{
                
                print("Error \(error.localizedDescription)")
                
            }
            
            self.articleList = newsFullList!.articles
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
            
        } .resume()
        
        
    }
    

}


extension UIImageView {
    
    func downloadImage(from url : URL) {
        contentMode = .scaleToFill
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse , httpResponse.statusCode == 200 ,
                  let mimetype = response?.mimeType, mimetype.hasPrefix("image"),
                  let data = data , error == nil ,
            let image = UIImage(data: data)
            else {
                      
                     print("error")
                      return
        }
            DispatchQueue.main.async {
                self.image = image
            }
               
        
        
        }.resume()
    
    
    
}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsTableViewCell
        let urlImage = URL(string: articleList[indexPath.row].urlToImage)
        cell.newsTitleLbl.text = articleList[indexPath.row].title
        if articleList[indexPath.row].author != nil {
            cell.authorNameLbl.text = articleList[indexPath.row].author
        }
        else {
            
            cell.authorNameLbl.text = "No Author Available"
        }
        if articleList[indexPath.row].urlToImage != nil {
            cell.newsImage.downloadImage(from: urlImage!)
        }
        else {
            
            cell.newsImage.image = UIImage(named: "empty")
        }
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var VC = storyboard?.instantiateViewController(withIdentifier: "NewsDetailViewController") as!NewsDetailViewController
        VC.articleDetails = articleList[indexPath.row]
        navigationController?.pushViewController(VC, animated: true)
    }
    
    
    
    
    
}
