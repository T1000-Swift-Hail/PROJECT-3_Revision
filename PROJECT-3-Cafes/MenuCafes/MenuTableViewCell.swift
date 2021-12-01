//
//  MenuTableViewCell.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 25/04/1443 AH.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageMenu: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    
    @IBOutlet weak var lblDescripition: UILabel!
    
    
    @IBOutlet weak var buttonAddFav: UIButton!
    
    func setupCell(photo:UIImage,name:String,price:Double,descripition:String) {
        imageMenu.image = photo
        lblName.text = name
        lblPrice.text = "\(price) SAR"
        lblDescripition.text = descripition
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
