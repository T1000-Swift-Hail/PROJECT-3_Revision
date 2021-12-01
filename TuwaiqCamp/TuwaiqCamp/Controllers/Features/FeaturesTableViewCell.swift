//
//  FeaturesTableViewCell.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 25/04/1443 AH.
//

import UIKit

class FeaturesTableViewCell: UITableViewCell {

    @IBOutlet weak var imageTableViwe: UIImageView!
    @IBOutlet weak var lableTableViwe: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //Function to setup items in cells
    func setup(pohto : UIImage ,Feature: String ){
        imageTableViwe.image = pohto
        lableTableViwe.text = Feature
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
