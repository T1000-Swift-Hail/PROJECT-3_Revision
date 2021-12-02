//
//  SignIn.swift
//  ThirdProject
//
//  Created by iAbdullah17 on 24/04/1443 AH.
//

import Foundation


protocol SignIn {
    var user : String {get}
    var password : String {get}
}


struct Users: SignIn {
    var user: String
    
    var password: String
    
    
}
