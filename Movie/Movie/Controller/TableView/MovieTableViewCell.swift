//
//  MovieTableViewCell.swift
//  Movie
//
//  Created by Asma on 29/11/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var posterMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    @IBOutlet weak var ratingMovie: UILabel!
    
    
    
    
    func setUpCell(imageDetiles: UIImage, titleDetiles: String, describtionDetiles: String, ratingDetiles: Double) {
        
        posterMovie.image = imageDetiles
        titleMovie.text = titleDetiles
        descriptionMovie.text = describtionDetiles
        ratingMovie.text = "\(ratingDetiles)"
        
    }
    
}
