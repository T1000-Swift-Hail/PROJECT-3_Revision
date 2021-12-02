//
//  NameAllahVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 26/04/1443 AH.
//

import UIKit

class NameAllahVC: UIViewController {
  

    
   var check = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    
    
    
   
    @IBAction func namesOfAllahBtn(_ sender: Any) {
        self.performSegue(withIdentifier: Suges.namesOfAllah.rawValue, sender: nil)
        
    }
    @IBAction func allah(_ sender: Any) {
        let alert = UIAlertController(title: "Al Jabbar", message: "The mighty one is the one whose will is carried out, and no one goes beyond his estimation, and he is the one who is able to create whatever he wills.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func alrhman(_ sender: Any) {
    
    

    let alert = UIAlertController(title: "Al Rahman", message: "The abundance of mercy, which is a name limited to God Almighty, and it is not permissible to say “Al-Rahman” to anyone other than God.  This is because everything is His mercy, and He is the Most Merciful, the Most Merciful.", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Close", style: .default, handler: nil)
    
    alert.addAction(okAction)
    self.present(alert, animated: true, completion: nil)
}
    
    
    @IBAction func btnMosq(_ sender: Any) {
        self.performSegue(withIdentifier: Suges.map.rawValue, sender: nil)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if check {
//
//                 let vc = Suges.destination as? MapVC
//            performSegue(withIdentifier: "map", sender: nil)
//        } else {
//
//
//        }
//    }
//
//    @IBAction func mapBtn(_ sender: UIButton) {
//        if check {
//            performSegue(withIdentifier: Suges.map.rawValue, sender: nil)
//
//        } else {
//
//
//        }
//        if check {
//
//                 let vc = Suges.destination as? MapVC
//            performSegue(withIdentifier: "map", sender: nil)
//        } else {
//
//
//        }

        
       // performSegue(withIdentifier: "map", sender: nil)
       
    
    

