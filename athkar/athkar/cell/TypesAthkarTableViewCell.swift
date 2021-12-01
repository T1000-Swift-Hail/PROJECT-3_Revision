//
//  TypesAthkarTableViewCell.swift
//  athkar
//
//  Created by AryafAlaqabali on 23/04/1443 AH.
//

import UIKit

class TypesAthkarTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblAthkar: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupCell(photo: UIImage , name: String) {
        imgView.image = photo
        lblAthkar.text = name
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
