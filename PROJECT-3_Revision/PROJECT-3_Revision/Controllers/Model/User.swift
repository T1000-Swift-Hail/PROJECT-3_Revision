//
//  User.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 23/04/1443 AH.
//

import Foundation
import UIKit

protocol Person {
    
    var email : String {get set}
    var passward : Int {get set}
    
    func describePerson()
    
    
}

extension Person {
    func describePerson(){
       print("\(email), and \(passward)")
    }
}

struct Users : Person {
    
    var email : String
    var passward: Int
    
    var login : String {
        return "This is \(email), and This is \(passward)"
        
    }
        
    var emailUser : String = "Mem@hotmail.com" {
            willSet {
            print("User Will loge in \(newValue)")
            }
            didSet {
            print("User did loge in \(oldValue)")
            }
        }
    
    }

func getAllUsers(arrayOfUsers: [Users]) {
        for user in arrayOfUsers {
         
            print("This is \(user.email)")
        }
       
    }
    
func == (Ihs: Users, rhs: Users) -> Bool {
        return Ihs.email == rhs.email
    }
    
    

