//
//  imageEnum.swift
//  QizeApp
//
//  Created by Hind Alharbi on 12/1/21.
//

import Foundation
import UIKit
enum ImageResourec: String{
   case imageOne = "imageOne"
    case imageTwo = "imageTwo"
    
}
extension UIImage{
    
    convenience init?(res: ImageResourec ) {
        self.init(named: res.rawValue)
    }
}
