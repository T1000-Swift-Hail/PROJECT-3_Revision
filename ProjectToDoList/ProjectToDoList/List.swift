//
//  NewList.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 24/04/1443 AH.
//

import Foundation
import UIKit

protocol List{
    
    var nameOfList : String {get}
    var colorOfList : UIColor {get}
    var imageOfList : UIImage {get}
    
}

struct NewList : List {
    
    var nameOfList : String
    var colorOfList : UIColor
    var imageOfList : UIImage
}
