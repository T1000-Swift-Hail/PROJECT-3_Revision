//
//  SecondViewController.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 30/11/2021.
//

import UIKit
// second controller
class SecondViewController: UIViewController {
    
    @IBOutlet weak var dataText: UITextView!
    // customer entered data in text view
    var dataTextEntered = ""
    
    @IBOutlet weak var dataImage: UIImageView!
    // customer slected image
    var dataImageEntered = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  asgining what the customer write and selcte to display it in second controller
        dataText.text = dataTextEntered
        dataImage.image = dataImageEntered
    }
}
