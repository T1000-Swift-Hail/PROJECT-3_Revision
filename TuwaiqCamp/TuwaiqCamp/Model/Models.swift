//
//  FeaturesStruct.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 25/04/1443 AH.
//

import Foundation
import UIKit

struct Cell {
    let title : String
    let image : UIImage
}
enum background : String {
    case wallPaper = "StagesWallPaper"
}

//==================================================

extension UIImage {
    convenience init?(Resource: background) {
        self.init(named: Resource.rawValue)
    }
}

//==================================================

struct Major {
    let title : String
    let logo : UIImage
}

