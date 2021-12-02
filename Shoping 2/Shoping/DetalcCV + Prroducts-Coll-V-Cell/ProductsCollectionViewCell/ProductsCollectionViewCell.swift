//
//  ProductsCollectionViewCell.swift
//  Shoping
//
//  Created by mac on 25/04/1443 AH.
//

import UIKit


class ProductsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productsImage: UIImageView!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productsLabel: UILabel!
    
    
    func setupProduct (photo : UIImage ,name : String  , price : Int) {
        productsImage.image = photo
        productsImage.layer.masksToBounds = true
        productsImage.layer.cornerRadius = 5
       
        productPrice.text = "\(price) SAR"
        
        productsLabel.text = name
        productsLabel.layer.masksToBounds = true
        productsLabel.layer.cornerRadius = 5
    
    }
    
    
}
