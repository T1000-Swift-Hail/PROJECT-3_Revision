//
//  TopMovieTableViewCell.swift
//  project_3
//
//  Created by mona aleid on 25/04/1443 AH.
//

import UIKit

class TopMovieTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var movieTitle: UILabel!
    
    
    @IBOutlet weak var movieTitleImage: UIImageView!
    
    func setupCell(photo:UIImage , name: String){
        movieTitleImage.image = photo
        movieTitle.text = name
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
