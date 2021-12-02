//
//  User.swift
//  Project3
//
//  Created by طلال عبيدالله دعيع القلادي on 29/11/2021.
//
// Protocol to User
import Foundation
protocol UserRole {
    
    var firstName : String {get set}
    var password : String {get set}
}

struct User:UserRole {
    var firstName : String
    var password : String
}


