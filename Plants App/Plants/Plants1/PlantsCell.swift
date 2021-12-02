//
//  PlantsCell.swift
//  Plants
//
//  Created by Asma Rasheed on 30/11/2021.
//

import UIKit

class PlantsCell: UITableViewCell {

    
    
    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var laDes: UILabel!
    
    @IBOutlet weak var laName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     
    }
    
    
    func frotcell(photo : UIImage , names : String , des : String ){
        img.image = photo
        laName.text = names
        laDes.text = des
    }

}
