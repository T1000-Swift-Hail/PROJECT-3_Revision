//
//  User.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 23/04/1443 AH.
//

import Foundation
import UIKit
// This is for user protocol
protocol User {
    var email: String {get}
    var phone: Int {get}
    var Users :String {get}
    var age :Int {get}
    
}
//This is class properties  to willSet ,didSet
class person {
    
    let notesdaily = 3
    let notesweekly = 5
    
    var email = User.self
    var addnotes = 3 {
willSet {
            print("About to have \(newValue) notes!  Make plans")
        }
didSet {
            print("You used to have \(oldValue) notes.  Now you have \(addnotes).")
        }
    }
//This is struct person
    struct person2: User {
        var Users: String
        var email: String
        var phone: Int
        var name :String
        var age :Int
        
    }}







    


