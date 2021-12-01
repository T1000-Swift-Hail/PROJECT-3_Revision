//
//  StagesVC.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 26/04/1443 AH.
//

import UIKit

class StagesVC: UIViewController {
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(Resource: .wallPaper)
        // Do any additional setup after loading the view.
    }
}
