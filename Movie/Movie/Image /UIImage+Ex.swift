//
//  UIImage+Ex.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import Foundation
import UIKit

enum UIImageResource: String {
    
    case SpiritedAway = "SpiritedAway"
    case BloodRayne = "BloodRayne"
    case SlenderMan = "SlenderMan"
    case TheGodfather = "TheGodfather"
    case Spencer = "Spencer"
    case OneShot = "OneShot"
    case DontBreathe = "DontBreathe"
    case TheWalkingDead = "TheWalkingDead"
    
    
    case Cinderella_Ani = "Cinderella_Ani"
    case Cruella_Ani = "Cruella_Ani"
    case Encanto_Ani = "Encanto_Ani"
    case HouseofGucci_Ani = "HouseofGucci_Ani"
    case Luca_Ani = "Luca_Ani"
    case RedNotice_Ani = "RedNotice_Ani"
    case tick_Ani = "tick_Ani"
    case TheMatrix_Ani = "TheMatrix_Ani"
    case Dexter_Ani = "Dexter_Ani"
    
}

extension UIImage {
    
    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
