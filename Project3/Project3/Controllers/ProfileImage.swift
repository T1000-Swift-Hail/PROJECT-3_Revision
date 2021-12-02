//
//  ProfileImage.swift
//  Project3
//
//  Created by طلال عبيدالله دعيع القلادي on 29/11/2021.
//

import UIKit
// class to profile image
class ProfileImage: UITableViewCell {
    @IBOutlet weak var cityPic: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
