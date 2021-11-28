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
    case ABeautifulMind_Ani = "ABeautifulMind_Ani"
    case Dune = "Dune"
    case Dune_Ani = "Dune_Ani"
    case Epic = "Epic"
    case Epic_Ani = "Epic_Ani"
    case Hope = "Hope"
    case Hope_Ani = "Hope_Ani"
    case Inception = "Inception"
    case Inception_Ani = "Inception_Ani"
    case SpiderMan = "SpiderMan"
    case SpiderMan_Ani = "SpiderMan_Ani"
    case SpiritedAway = "SpiritedAway"
    case SpiritedAway_Ani = "SpiritedAway_Ani"
    case ToyStory = "ToyStory"
    case ToyStory_Ani = "ToyStory_Ani"
}

extension UIImage {
    
    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
