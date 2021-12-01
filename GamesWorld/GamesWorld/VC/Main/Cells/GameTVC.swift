//
//  GameTVC.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

class GameTVC: UITableViewCell {
    @IBOutlet weak var imageViewGame: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelCategory: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configurecell(with: Games) {
        labelTitle.text = with.name
        labelRating.text = "Rating: \(with.rate)"
        labelCategory.text = getGameType(withType: TypeOfGame.init(rawValue: Int(with.type)) ?? .action)
        imageViewGame.image = UIImage(named: with.imageURL ?? "1")
    }
}
