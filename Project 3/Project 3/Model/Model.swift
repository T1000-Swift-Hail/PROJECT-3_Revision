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
    case productOne = "images-4"
    case productTwo = "images-5"
    case productThree = "images-6"
    case productFour = "images-7"
    case productFive = "images-8"
    case productSix = "images-9"
    case productSeven = "images-10"
    
}
struct Product {
    
    var product : [Products] = [.productOne,.productTwo,.productThree,.productFour,.productSix,.productSeven]
}



