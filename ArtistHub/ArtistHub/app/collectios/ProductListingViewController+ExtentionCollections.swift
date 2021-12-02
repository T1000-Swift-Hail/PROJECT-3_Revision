//
//  productTableViewCell.swift
//  ArtistHub
//
//  Created by Anas Hamad on 24/04/1443 AH.
//

import Foundation
import UIKit


extension ProductListingViewController:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    
    
    func setDelegate() {
 
        collectionRandom.delegate = self
        collectionRandom.dataSource = self
        
    }
    

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        
        guard let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "RandomCell", for: indexPath) as? CollectionViewCellRandom else { return UICollectionViewCell()}
        
        cellA.imageRandom.image =  products[indexPath.row].products[0].imageName
        
        
        return cellA
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }


}
