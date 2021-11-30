//
//  Users.swift
//  GamesReviews
//
//  Created by Dalal AlSaidi on 23/04/1443 AH.
//

import Foundation

protocol Users {
    
    var username: String { get }
    var email : String { get }
    var passWord : String { get }
    var country : String { get }
    var canRate : Bool { get }
    
}
    

struct Gamer : Users {
  
    var username: String
    var email : String
    var passWord: String
    var country : String
    var canRate: Bool
 
}


//
//protocol Rating {
//
//
//}
