//
//  ViewController.swift
//  183 fetch data from webapi custom table view
//
//  Created by Mac Mini on 04/05/22.
//

import UIKit

class ViewController: UIViewController {

    var universityDetails = [UniversityData]()
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchData()
    }

    func fetchData() {
        
        let url = URL(string: "http://universities.hipolabs.com/search?country=india")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data , error == nil else {
                print("Error occured while accessing the data from API")
                return
            }
            
            var listOfData = [UniversityData]()
            do {
                listOfData = try JSONDecoder().decode([UniversityData].self, from: data)
            }
            catch{
                print("error \(error.localizedDescription)")
                
            }
            
            self.universityDetails = listOfData
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
            
        } .resume()
    }
    
    
}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universityDetails.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UniversityTableViewCell
        cell.universityLbl.text = "\(indexPath.row+1). \(universityDetails[indexPath.row].name)"
        cell.websiteLbl.text = universityDetails[indexPath.row].web_pages[0]
       
        return cell
    }
    
    
}
