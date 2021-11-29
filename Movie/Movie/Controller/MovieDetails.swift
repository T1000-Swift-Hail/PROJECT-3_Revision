//
//  MovieDetails.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import UIKit

class MovieDetails: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieDescribtion: UILabel!
    
    
    var imageDetiles: UIImage!
    var titleDetiles: UILabel!
    var ratingDetiles: UILabel!
    var describtionDetiles: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        movieImage.image = imageDetiles
    
        
    }

}
