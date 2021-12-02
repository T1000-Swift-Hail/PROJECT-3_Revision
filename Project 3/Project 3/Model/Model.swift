//
//  Model.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 24/04/1443 AH.
//

import Foundation

enum HomePageImege : String {
    
    case homeImegeOne = "images-1"
    case homeImegeTwo = "images-2"
    case homeImegeThree = "images-3"
    
}

struct Imeges {
    
    var imeges : [HomePageImege] = [.homeImegeOne,.homeImegeTwo,.homeImegeThree]
    
    
}

enum Products: String {
    case productOne = "images-10"
    case productTwo = "images-11"
    case productThree = "images-12"
    case productFour = "images-7"
    case productFive = "images-8"
    case productSix = "images-9"
    
    
}
struct Product {
    
    var product : [Products] = [.productOne,.productTwo,.productThree,.productFour,.productFive,.productSix]
}



