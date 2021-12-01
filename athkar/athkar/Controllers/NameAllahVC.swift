//
//  NameAllahVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 26/04/1443 AH.
//

import UIKit

class NameAllahVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func namesOfAllahBtn(_ sender: Any) {
        self.performSegue(withIdentifier: Suges.namesOfAllah.rawValue, sender: nil)
        
    }
    @IBAction func allah(_ sender: Any) {
        let alert = UIAlertController(title: "allah", message: "jbrwufbwb", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func alrhman(_ sender: Any) {
    }
    

}
