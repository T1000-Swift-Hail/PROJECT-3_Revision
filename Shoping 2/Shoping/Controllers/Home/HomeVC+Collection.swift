//
//  HomeVC+Collection.swift
//  Shoping
//
//  Created by mac on 27/04/1443 AH.
//

import Foundation
import UIKit

extension HomeVC : UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func delegates() {
        listCollectionView.delegate = self
        listCollectionView.dataSource = self
        productsCollectionView.delegate = self
        productsCollectionView.dataSource = self
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == productsCollectionView){

            return searchProduct.count
            
        }else {
            return leist.count
        }
        //            if searching {
        //
        //            }else{
        //                return searchProduct.count
        //            }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if (collectionView == productsCollectionView){
            let cell2 = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! ProductsCollectionViewCell
            let suspense = searchProduct[indexPath.row]

            cell2.setupProduct(photo: suspense.photo, name: suspense.name, price: suspense.price)
            cell2.layer.cornerRadius = 20
            
            cell2.layer.masksToBounds = true
            cell2.layer.cornerRadius = cell2.frame.width / 8
            cell2.alpha = 0.3
            UICollectionViewCell.animate(withDuration: 1) {
                cell2.alpha = 1
            }
            
            return cell2
        }else {
            let cell = listCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListCollectionViewCell
            let existing = leist[indexPath.row]
            cell.setupCell(vule: existing.vule)
            
            return cell
        }
        //            if searching {
        //                cell2.setupProduct(photo: suspense.photo, name: suspense.name, price: suspense.price)
        //            }else{
        //                cell2.setupProduct(photo: suspense.photo, name: suspense.name, price: suspense.price)
        //            }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if (collectionView == productsCollectionView){
        slecetProduct = searchProduct[indexPath.row]
            performSegue(withIdentifier: "go", sender: nil)
            
        } else {
            selectedleist = leist[indexPath.row].vule
            switch selectedleist {
            case "kk":
                performSegue(withIdentifier: "kk", sender: nil)
            case "ss":
                performSegue(withIdentifier: "dd", sender: nil)
            default:
                break
            }
            
            
            
        }
    }
   

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    
}
