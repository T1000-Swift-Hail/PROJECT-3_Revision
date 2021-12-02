//
//  EnumPic.swift
//  Plants
//
//  Created by Asma Rasheed on 30/11/2021.
//

import Foundation
import UIKit

enum ImageResource: String {
    case image1 = "img1"
    case image2 = "img2"
    case image6 = "img6"
    case image4 = "img4"
    case image5 = "img5"
    
}
extension UIImage {
    
    convenience init?(re: ImageResource) {
        self.init(named: re.rawValue)
    }
    
}
