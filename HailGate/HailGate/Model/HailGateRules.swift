//
//  HailGateRules.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import Foundation

protocol hailGate {
    var isHail : Bool{get}
    var whenavailabl : Bool{get}
}

class HailGateRules : hailGate {
    
    var isHail: Bool
    
    var whenavailabl: Bool
    
    init(isHail : Bool , whenavailabl : Bool){
        self.isHail = isHail
        self.whenavailabl = whenavailabl
    }
    
    
}
struct User {
    
    let name : String
    let numberScoure: Int
    
    var scoure: String {
        return String(repeating: "★", count: numberScoure)
    }
    
    
}
