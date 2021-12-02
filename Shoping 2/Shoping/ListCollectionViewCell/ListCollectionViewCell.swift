//
//  ListCollectionViewCell.swift
//  Shoping
//
//  Created by mac on 25/04/1443 AH.
//

import UIKit


class ListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var listLabel: UILabel!
    
    func setupCell (vule : String){
        listLabel.text = "\(vule)"
       
        
    }
}

