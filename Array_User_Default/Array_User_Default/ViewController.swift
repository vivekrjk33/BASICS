//
//  ViewController.swift
//  Array_User_Default
//
//  Created by Mac Mini on 20/04/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
  
    
    @IBOutlet weak var detailTxtfld: UITextField!
    
    @IBOutlet weak var statusLbl: UILabel!
    
    @IBOutlet weak var myTable: UITableView!
    
    var toDoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = UserDefaults.standard.object(forKey: "todolist") as? [String]
        {
            toDoArray = data
            statusLbl.text = "\(toDoArray.count)  Taks pendingin to do list"
            
        }else{
            
            statusLbl.text = "No task Pending"
            
        }
        
    }

    @IBAction func saveBtn(_ sender: Any) {
        
        if detailTxtfld.text != nil {
           
            toDoArray.append(detailTxtfld.text!)
            UserDefaults.standard.set(toDoArray, forKey: "todolist")
            myTable.reloadData()
            statusLbl.text = "New task added in to do list"
            detailTxtfld.text = ""
            
        }
        else{
            statusLbl.text = "Please enter the task"
        }
      
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
    
}

