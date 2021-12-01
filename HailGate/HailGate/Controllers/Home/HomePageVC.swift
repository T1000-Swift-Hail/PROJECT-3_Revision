//
//  HomePageVC.swift
//  HailGate
//
//  Created by Monafh on 26/04/1443 AH.
//

import UIKit

class HomePageVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLBL: UILabel!
    @IBOutlet weak var infoTitle: UILabel!
    
    var pageTitle : String?
    var pageInfo : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let titel = pageTitle {
        titleLBL.text = titel
        }
        if let description = pageInfo {
        infoTitle.text = description
        }

    }
    


}
