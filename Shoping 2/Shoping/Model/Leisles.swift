//
//  Leisles.swift
//  Shoping
//
//  Created by mac on 27/04/1443 AH.
//

import Foundation
struct Leisles {
    let vule : String
    
    static func getLeisles() -> [Leisles] {
        return [
            Leisles(vule: "Chairs"),
            Leisles(vule: "Lamps"),
            Leisles(vule: "Tables"),
           
        ]
    }
}
