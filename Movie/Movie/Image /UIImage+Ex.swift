//
//  UIImage+Ex.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import Foundation
import UIKit

enum UIImageResource: String {
    
    case ABeautifulMind = "ABeautifulMind"
    case Dune = "Dune"
    case Epic = "Epic"
    case Hope = "Hope"
    case Inception = "Inception"
    case SpiderMan = "SpiderMan"
    case SpiritedAway = "SpiritedAway"
    case ToyStory = "ToyStory"
    
    
    case Cinderella_Ani = "Cinderella_Ani"
    case Cruella_Ani = "Cruella_Ani"
    case Encanto_Ani = "Encanto_Ani"
    case HouseofGucci_Ani = "HouseofGucci_Ani"
    case Luca_Ani = "Luca_Ani"
    case Shang_Chi_Ani = "Shang_Chi_Ani"
    case SpiderMan_Ani = "SpiderMan_Ani"
    case WrathofMan_Ani = "WrathofMan_Ani"
    case Dexter_Ani = "Dexter_Ani"
    
}

extension UIImage {
    
    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
