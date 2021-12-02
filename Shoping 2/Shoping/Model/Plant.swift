//
//  ProductsAndSectionsModel.swift
//  Shoping
//
//  Created by mac on 27/04/1443 AH.
//

import Foundation
import UIKit

struct Plant  {
        let photo : UIImage
        let name : String
        let price : Int
        
        
        static func getProducts() -> [Plant] {
            return [
            
                Plant(photo: UIImage(named: "chairs1" )!, name: "Comfortable wooden chair", price: 200),
                Plant(photo: UIImage(named: "chairs2" )!, name: "Small chair", price: 300),
                Plant(photo: UIImage(named: "chairs3" )!, name: " Big chair", price: 234),
                Plant(photo: UIImage(named: "chairs4" )!, name: "Big2 chair", price: 564) ,
                Plant(photo: UIImage(named: "chairs5" )!, name: "Medium chair", price: 232),
                Plant(photo: UIImage(named: "chairs6" )!, name: "Fabric chair ", price: 545),
                Plant(photo: UIImage(named: "chairs7" )!, name: "wooden chair", price: 242),
                Plant(photo: UIImage(named: "chairs8" )!, name: "Wheel chair", price: 234),
                Plant(photo: UIImage(named: "chairs9" )!, name: "School chair", price: 565),
                Plant(photo: UIImage(named: "chairs10" )!, name: "School2 chair", price: 765),
                
                Plant(photo: UIImage(named: "sofa1" )!, name: "leather sofa", price: 346),
                Plant(photo: UIImage(named: "sofa2" )!, name: "Long sofa", price: 366),
                Plant(photo: UIImage(named: "sofa3" )!, name: "Small sofa", price: 244),
                Plant(photo: UIImage(named: "sofa4" )!, name: "Fabric sofa", price: 557),
                Plant(photo: UIImage(named: "sofa5" )!, name: "Medium sofa", price: 674),
                Plant(photo: UIImage(named: "sofa6" )!, name: "Wheel sofa", price: 233),
                Plant(photo: UIImage(named: "sofa7" )!, name: "Big sofa", price: 121),
                Plant(photo: UIImage(named: "sofa8" )!, name: "Medium sofa", price: 134),
                Plant(photo: UIImage(named: "sofa9" )!, name: "Small sofa", price: 535),
                Plant(photo: UIImage(named: "sofa10" )!, name: "School sofa", price: 380),
               
                Plant(photo: UIImage(named: "lamp1" )!, name: "Dim Lighting", price: 327),
                Plant(photo: UIImage(named: "lamp2" )!, name: "Wall lamp", price: 346),
                Plant(photo: UIImage(named: "lamp3" )!, name: "Side lamp", price: 344),
                Plant(photo: UIImage(named: "lamp4" )!, name: "LED lamp", price: 327),
                Plant(photo: UIImage(named: "lamp5" )!, name: "Big lamp", price: 142),
                Plant(photo: UIImage(named: "lamp6" )!, name: "Hidden lamp", price: 41),
                Plant(photo: UIImage(named: "lamp7" )!, name: "Factory lamp", price: 43),
                Plant(photo: UIImage(named: "lamp8" )!, name: "lab lamp", price: 433),
                Plant(photo: UIImage(named: "lamp9" )!, name: "Flor lamp", price: 432),
                Plant(photo: UIImage(named: "lamp10" )!, name: "Wall lamp", price: 123),
                
                Plant(photo: UIImage(named: "table1")!, name: "Talal", price: 234),
                Plant(photo: UIImage(named: "table2")!, name: "Talal", price: 176),
                Plant(photo: UIImage(named: "table3")!, name: "Talal", price: 563),
                Plant(photo: UIImage(named: "table4")!, name: "Talal", price: 655),
                Plant(photo: UIImage(named: "table5")!, name: "Talal", price: 436),
                Plant(photo: UIImage(named: "table6")!, name: "Talal", price: 764),
                Plant(photo: UIImage(named: "table7")!, name: "Talal", price: 233),
                Plant(photo: UIImage(named: "table8")!, name: "Talal", price: 454),
                Plant(photo: UIImage(named: "table9")!, name: "Talal", price: 534),
                Plant(photo: UIImage(named: "table10")!, name: "Talal", price: 589)
                
            ]
            


            
        }
    }
