//
//  Users.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 23/04/1443 AH.
//

import Foundation

protocol UserPr {

    var username: String { get }
    var email : String { get }
    var password : String { get }
    var country : String { get }
    var canRate : Bool { get }

}
    

struct Users : UserPr {

    var username: String
    var email : String
    var password: String
    var country : String
    var canRate: Bool
}


//
//protocol Rating {
//
//
//}
