//
//  str.swift
//  athkar
//
//  Created by AryafAlaqabali on 24/04/1443 AH.
//

import Foundation
import UIKit
import CoreLocation

protocol Photos{
    var name : String {get}
    var photo : UIImage {get}
}

struct Photo :Photos {
    let name : String
    let photo : UIImage
    
}
struct Maps{
    var name : String
    var lattitude : CLLocationDegrees
    var longtitude : CLLocationDegrees
}
