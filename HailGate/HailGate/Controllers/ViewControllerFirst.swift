//
//  ViewController.swift
//  HailGate
//
//  Created by Monafh on 24/04/1443 AH.
//

import UIKit

class ViewControllerFirst: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var titleAppLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleAppLBL.text = "Hail Gate"
        view.backgroundColor = UIColor(rgb: 0xFFE0ECDE)
        backgroundImage.image = UIImage(named: "background")
    }
}

