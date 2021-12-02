//
//  ChairsCollectionViewCell.swift
//  Shoping
//
//  Created by mac on 26/04/1443 AH.
//

import UIKit

class ChairsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var chairsImage: UIImageView!
    @IBOutlet weak var chairsName: UILabel!
    @IBOutlet weak var chairsPrice: UILabel!
    
    func setupProduct (photo : UIImage ,name : String  , price : Int) {
        chairsImage.image = photo
        chairsImage.layer.masksToBounds = true
        chairsImage.layer.cornerRadius = 5
       
        chairsPrice.text = "\(price) SAR"
        
        chairsName.text = name
        chairsName.layer.masksToBounds = true
        chairsName.layer.cornerRadius = 5
    
    }
}
