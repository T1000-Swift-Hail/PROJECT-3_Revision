//
//  Protocol.swift
//  project_3
//
//  Created by mona aleid on 26/04/1443 AH.
//

import Foundation
import UIKit

protocol TopRated {
    var image :UIImage {get}
    var name : String {get}
}

struct TopMoviesSet : TopRated {
    var image :UIImage
    var name : String 
}
