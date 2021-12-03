//
//    SecondVC.swift
//  project_3
//
//  Created by mona aleid on 25/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieDes: UILabel!
    
    var posterImageSet: UIImage?
    var movieTitleSet: String?
    var movieDesSet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        posterImage.image = posterImageSet
        movieTitle.text = movieTitleSet
        movieDes.text = movieDesSet
       
        print("movieDes .......")
        print(movieDesSet ?? "")
    }

}
    
