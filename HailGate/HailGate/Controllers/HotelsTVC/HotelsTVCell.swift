//
//  HotelsTVCell.swift
//  HailGate
//
//  Created by Monafh on 26/04/1443 AH.
//

import UIKit

class HotelsTVCell: UITableViewCell {
    
    @IBOutlet weak var hotelsName: UILabel!
    @IBOutlet weak var hotelsRates: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
