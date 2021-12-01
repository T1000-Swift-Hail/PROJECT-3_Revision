//
//  ProductsDetailsViewController+Extentions.swift
//  ArtistHub
//
//  Created by Anas Hamad on 24/04/1443 AH.
//

import Foundation
import UIKit


class TableViewCustumCell: UITableViewCell {
    
    @IBOutlet var collectionViewDetail : UICollectionView!
        @IBOutlet var catogeryLabel: UILabel!
    
    var collectionData : [Product]!
    
override func awakeFromNib() {
        setdelegate()
        
    }
    
    func delegat(){
        setdelegate()
    }
}

