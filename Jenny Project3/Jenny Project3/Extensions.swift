//
//  Extensions.swift
//  Jenny Project3
//
//  Created by HIND12 on 26/04/1443 AH.
//

import Foundation
extension person {
    
    func dopainting (payment:Int)throws {
        guard payment >= 50 else {
            throw Payment.paymentLow
        }
    print("Your painting is Done")
        
}
}
