//
//  ChairsCV.swift
//  Shoping
//
//  Created by mac on 26/04/1443 AH.
//

import Foundation
import UIKit

class ChairsVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var chairsCollectionView: UICollectionView!
    
    var products = [Plantes] ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        products.append(Plantes(photo: UIImage(named: "chairs1")!, name: "Comfortable Chair", price: 158))
        products.append(Plantes(photo: UIImage(named: "chairs2")!, name: "Leather Chair", price: 178))
        products.append(Plantes(photo: UIImage(named: "chairs3")!, name: "Mobile Chair", price: 158))
        products.append(Plantes(photo: UIImage(named: "chairs4")!, name: "Side Chair", price: 189))
        products.append(Plantes(photo: UIImage(named: "chairs5")!, name: "Comfortable Chair", price: 198))
        products.append(Plantes(photo: UIImage(named: "chairs6")!, name: "Leather Chair", price: 162))
        products.append(Plantes(photo: UIImage(named: "chairs7")!, name: "Mobile Chair", price: 187))
        products.append(Plantes(photo: UIImage(named: "chairs8")!, name: "Comfortable Chair", price: 143))
        products.append(Plantes(photo: UIImage(named: "chairs9")!, name: "Side Chair", price: 123))
        products.append(Plantes(photo: UIImage(named: "chairs10")!, name: "Leather Chair", price: 200))
        
        chairsCollectionView.delegate = self
        chairsCollectionView.dataSource = self

    
    }
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = chairsCollectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! ChairsCollectionViewCell
        let suspense = products[indexPath.row]
        cell3.setupProduct(photo: suspense.photo, name: suspense.name, price: suspense.price)
        cell3.layer.cornerRadius = 20
        
        cell3.layer.masksToBounds = true
        cell3.layer.cornerRadius = cell3.frame.width / 8
     
        
        return cell3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    
}
struct Plantes  {
    let photo : UIImage
    let name : String
    let price : Int
}
