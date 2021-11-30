//
//  Mall.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import Foundation
import UIKit

//   Enum For Section of Mall to used it in any class ....
enum Mall : String {
    case firstMall = " GRANDMALL  "
    case secondMall = "GardenMall "
    case threeMall = " SALMAMALL  "
    
}

// to can Benefit in extension ShoppingCentersVC ....
struct MallCenter {
    
    let mallInfo:[Mall] = [.firstMall,.secondMall,.threeMall]
    
//    let myColoer = UIColor(rgb: 0xFFE0ECDE)
  
}
