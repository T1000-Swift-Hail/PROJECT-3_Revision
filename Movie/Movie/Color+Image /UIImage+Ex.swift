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
    
    
    case ABeautifulMind_Ani = "ABeautifulMind_Ani"
    case Dune_Ani = "Dune_Ani"
    case Epic_Ani = "Epic_Ani"
    case Hope_Ani = "Hope_Ani"
    case Inception_Ani = "Inception_Ani"
    case SpiderMan_Ani = "SpiderMan_Ani"
    case SpiritedAway_Ani = "SpiritedAway_Ani"
    case ToyStory_Ani = "ToyStory_Ani"
}

extension UIImage {
    
    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
