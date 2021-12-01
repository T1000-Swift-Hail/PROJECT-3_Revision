//
//  ToDetilesVC.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 26/04/1443 AH.
//

import UIKit

class ToDetilesVC: UIViewController {

    @IBOutlet weak var Detiles: UILabel!
    
    var dataSend = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Detiles.text = dataSend
    }
}
