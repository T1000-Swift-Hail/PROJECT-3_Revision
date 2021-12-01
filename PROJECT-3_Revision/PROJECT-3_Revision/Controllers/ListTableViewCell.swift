//
//  ListTableViewCell.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 23/04/1443 AH.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var treesName: UILabel!
    
    @IBOutlet weak var imageTrees: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
