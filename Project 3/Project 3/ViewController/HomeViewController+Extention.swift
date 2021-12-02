//
//  HomeViewController+Extention.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 24/04/1443 AH.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func dataSet () {
        
        
        collectionViewPectuers.delegate = self
        collectionViewPectuers.dataSource = self
        productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewPectuers {
            return collectionImeges.imeges.count
        } else {
            return products.product.count
        }
       
        

    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //collectionView
        if collectionView == collectionViewPectuers {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
             let  imegesColliction = collectionImeges.imeges[indexPath.row].rawValue
            cell.collectionViewPhoto.image = UIImage(named: imegesColliction)
            
            return cell
            
        } else {
            
            let productCell = collectionView.dequeueReusableCell(withReuseIdentifier:"producMaintCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
            let productImege = products.product[indexPath.row].rawValue
            productCell.productImege.image = UIImage(named: productImege)
    
    return productCell
            
        }
        
}
    
   
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) -> Void {
          
            performSegue(withIdentifier: "products", sender: nil)
    
    
    
    }
    
    

}
