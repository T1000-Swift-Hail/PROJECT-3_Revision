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
    
    
    case ABeautifulMind_Shot = "ABeautifulMind_Shot"
    case Dune_Shot = "Dune_Shot"
    case Epic_Shot = "Epic_Shot"
    case Hope_Shot = "Hope_Shot"
    case Inception_Shot = "Inception_Shot"
    case SpiderMan_Shot = "SpiderMan_Shot"
    case SpiritedAway_Shot = "SpiritedAway_Shot"
    case ToyStory_Shot = "ToyStory_Shot"
    
    
    
}

extension UIImage {
    
    convenience init?(resource: UIImageResource){
        self.init(named: resource.rawValue)
    }
}
