//
//  Enum+Extension.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 25/04/1443 AH.
//

import Foundation
import UIKit


enum ImageResource: String {
    case Image1 = "Image1"
    case Image2 = "Image2"
    case Image3 = "Image3"
}


extension UIImage {
    
    convenience init?(resource: ImageResource) {
        self.init(named: resource.rawValue)
    }
    
}

//    var toDoListImage = [UIImage(systemName: "list.bullet"),UIImage(systemName: "cart"),UIImage(systemName: "bag")]
