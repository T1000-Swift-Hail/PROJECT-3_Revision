//
//  TableViewDitail+extention.swift
//  ArtistHub
//
//  Created by Anas Hamad on 25/04/1443 AH.
//

import Foundation
import UIKit

extension TableViewCustumCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    func setdelegate(){
        collectionViewDetail.delegate = self
        collectionViewDetail.dataSource = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailCell", for: indexPath) as? ProductsDetailsCollectionCell  else { return UICollectionViewCell()}

        cellA.productImage.image = collectionData[indexPath.row].products[0].imageName
        cellA.lebelView.text = collectionData[indexPath.row].products[0].name
        cellA.lebelPrice.text = collectionData[indexPath.row].products[0].price
        
        return cellA
        
    }
    
    
    
    
    
    
    
    
    
    
    }
    
    


















