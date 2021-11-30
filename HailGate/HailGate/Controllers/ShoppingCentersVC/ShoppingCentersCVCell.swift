//
//  ShoppingCentersCVCell.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import UIKit

class ShoppingCentersCVCell: UICollectionViewCell {
    
    @IBOutlet weak var nameOfMallLBL: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImage.layer.cornerRadius = 12
        
    }
}
