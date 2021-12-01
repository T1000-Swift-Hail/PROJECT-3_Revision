//
//  ListCafesTableViewCell.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 23/04/1443 AH.
//

import UIKit

class ListCafesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageList: UIImageView!
    
    
    @IBOutlet weak var lableList: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
