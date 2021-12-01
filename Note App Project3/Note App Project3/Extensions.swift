//
//  Extensions.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 26/04/1443 AH.
//

import Foundation

//This is extension and conditionals
extension person {
    
    
    
    func describeMan() {
        if  notesdaily > 3 {
            print("number is more than 3 ")
        }
        
        
        else if notesdaily < 5 && notesweekly > 3 {
            print("number is less than 5")
        }
        else{
            print("number is notesmonthly")
        }
        
    }
    
    
}









