//
//  counterVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 24/04/1443 AH.
//

import UIKit

class counterVC: UIViewController {
    @IBOutlet weak var lblNumber: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func plusAction(_ sender: Any) {
        
        if count + 1 < 34 {
        count = count + 1
               lblNumber.text = "\(count)"
        }
//
      
//            var  count = 0
//        for count in countt 0...10{
//                count = count + 1
//              lblNumber.text = "\(count)"
//
//        }
       

           
          
        }
        
}


     
     
        
//else if  count 30 >0 {
////            count = count - 0
//                   lblNumber.text = "\(count)"
//        }
//        else{
//
//        }
        


    



