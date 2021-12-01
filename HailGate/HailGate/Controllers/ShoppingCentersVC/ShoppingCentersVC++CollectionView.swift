//
//  ShoppingCentersVC++CollectionView.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import Foundation
import UIKit

// Arr contains section names ...

var myImageCitites = ["GRANDMALL","GardenMall","SALMAMALL"]


extension ShoppingCentersVC : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func setDelegate() {
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mallInformation.mallInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ShoppingCentersCVCell else {return UICollectionViewCell()}
        
        cell.nameOfMallLBL.text = mallInformation.mallInfo[indexPath.row].rawValue
//        using Arr to name the section ...
        cell.myImage.image = UIImage(named: myImageCitites[indexPath.row])
        cell.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
//         using switch to direct the section ...
        
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "secondPage", sender: nil)
        case 1:
            performSegue(withIdentifier: "secondPage", sender: nil)
        case 2:
            performSegue(withIdentifier: "secondPage", sender: nil)
        default:
            print("")
        }
    }
//     func sizing conttroling ....
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 10, height: (view.frame.height) / 3)
    }
}

