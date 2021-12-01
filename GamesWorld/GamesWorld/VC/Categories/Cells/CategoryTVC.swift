//
//  CategoryTVC.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

class CategoryTVC: UITableViewCell {

    @IBOutlet weak var labelCat: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(withTitle: String) {
        labelCat.text = withTitle
    }
}
