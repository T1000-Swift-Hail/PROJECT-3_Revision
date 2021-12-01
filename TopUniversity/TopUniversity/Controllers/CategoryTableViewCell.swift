//
//  CategoryTableViewCell.swift
//  TopUniversity
//
//  Created by Hesah Alqhtani on 30/11/2021.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageuniversites: UIImageView!
    
    @IBOutlet weak var nameUniversties: UILabel!
//    display image and title
    func setupCell(photo: UIImage , name: String) {
        imageuniversites.image = photo
        nameUniversties.text = name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
