//
//  Cafes.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 23/04/1443 AH.
//

import Foundation
import UIKit
protocol Store {
    
    var name : String { get set}
    var location : String {get set}
    var information : String {get set}
}

struct Cafe : Store {
    var name: String
    var location: String
    var information: String
    var numberPhone: Int
    var imageCafe: UIImage
    var menue: [Menus]
    
}
    
      
