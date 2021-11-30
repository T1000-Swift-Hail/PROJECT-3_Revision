//
//  Mall.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import Foundation
enum Mall : String {
    case firstMall = "GRANDMALL"
    case secondMall = "GardenMall"
    case threeMall = "SALMAMALL"
    
}

struct MallCenter {
    
    let mallInfo:[Mall] = [.firstMall,.secondMall,.threeMall]
  
}
