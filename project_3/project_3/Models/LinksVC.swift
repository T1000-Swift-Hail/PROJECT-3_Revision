//
//  LinksVC.swift
//  project_3
//
//  Created by mona aleid on 27/04/1443 AH.
//

import UIKit
import SafariServices

class LinksVC: UIButton {

    @IBAction func goToAMC(_ sender: Any) {
        openURL(url: "https://www.amccinemas.com")
    }
    @IBAction func goToVOX(_ sender: Any) {
        openURL(url: "https://ksa.voxcinemas.com/ar/showtimes/hail-square-hail")
    }
    
    func openURL(url:String) {
    guard let url = URL (string: url) else {return}
    UIApplication.shared.open(url, options: [:])
    }
}
