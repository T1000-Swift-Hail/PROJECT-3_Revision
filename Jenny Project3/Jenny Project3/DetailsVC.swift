//
//  DetailsVC.swift
//  Jenny Project3
//
//  Created by HIND12 on 25/04/1443 AH.
//

import UIKit

class DetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let ConnectinglocationService = Service(name: "Nasser", description: "it takes you to the place you want", price: 50, phoneNumber:0535173329)
    let ConnectinghousewareService = Service(name: "Mohammed", description: "it delivers to you the best", price: 40, phoneNumber:0536549834)
   // let ""Service = Service(name: "swimming"., description: "", price: 45)
    
    
 var ourServices  = [Service]()
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
