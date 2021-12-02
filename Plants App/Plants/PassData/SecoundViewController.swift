//
//  SecoundViewController.swift
//  Plants
//
//  Created by Asma Rasheed on 29/11/2021.
//

import UIKit

class SecoundViewController: UIViewController {

    @IBOutlet weak var lalUserName: UILabel!
    var userData : User?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let user = userData{
            lalUserName.text = "\(user.name) \(user.des)"
        }
        

    }
    

   

}


