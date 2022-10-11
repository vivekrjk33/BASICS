//
//  ViewController.swift
//  collection
//
//  Created by Vivek on 28/07/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mycollectionView: UICollectionView!
    
    
    var arr : [ProductList] = [ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist"),ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist"),ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist"),ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist"),ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist"),ProductList(imageValue: UIImage(named: "1")!, nameValue: "Dunc"),ProductList(imageValue: UIImage(named: "2")!, nameValue: "Money Heist")]
//    var arrLbl = ["Dunc","Money Heist","Dunc","Money Heist","Dunc","Money Heist","Dunc","Money Heist","Dunc","Money Heist","Dunc","Money Heist","Dunc","Money Heist"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mycollectionView.collectionViewLayout = createLayout()
 
    }
    
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.5)), subitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        
        
        return UICollectionViewCompositionalLayout(section: section)
        
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mycollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageView.image = arr[indexPath.row].imageValue
        cell.nameLbl.text = arr[indexPath.row].nameValue
        cell.imageView.layer.cornerRadius = 10
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.orange.cgColor
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        mycollectionView.deselectItem(at: indexPath, animated: true)
        
        let cell = self.storyboard?.instantiateViewController(withIdentifier: "DataViewController") as? DataViewController
        cell?.value1 = arr[indexPath.row]
        print(indexPath.row)
        self.navigationController?.pushViewController(cell!, animated: true)
        
    }
   
    
}
