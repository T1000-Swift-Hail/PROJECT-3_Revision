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
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
