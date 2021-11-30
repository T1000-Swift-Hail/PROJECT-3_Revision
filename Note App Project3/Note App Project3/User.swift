//
//  User.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 23/04/1443 AH.
//

import Foundation
// This is for user
protocol User {
    var email: String {get}
    var phone: Int {get}
    var name :String {get}
    var age :Int {get}
    
}
    
struct person:User {
    
    var email: String
    var phone: Int
    var name :String
    var age :Int
    var id : Int 
}
 

