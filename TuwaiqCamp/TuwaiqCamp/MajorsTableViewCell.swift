//
//  MajorsTableViewCell.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 26/04/1443 AH.
//

import UIKit

class MajorsTableViewCell: UITableViewCell {

    @IBOutlet weak var logo : UIImageView!
    @IBOutlet weak var major: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        logo.layer.cornerRadius = 12
        logo.clipsToBounds = true
    }
    
    func setup2(pohto : UIImage ,Majors: String ){
        logo.image = pohto
        major.text = Majors
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
