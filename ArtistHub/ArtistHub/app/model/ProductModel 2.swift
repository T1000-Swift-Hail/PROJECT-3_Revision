//
//  ProductModel.swift
//  ArtistHub
//
//  Created by Anas Hamad on 24/04/1443 AH.
//

import Foundation
import UIKit
enum ProductType : Int{
    case mug
    case shoes
    case tShirt
    case paperCup
    
}


struct ProductModel {
    var response: [Product]
}

struct Product {
    var categoryName: String
    var products: [ProductDetails]
}

struct ProductDetails {
    var name: String?
    var imageName: UIImage?
    var price: String?
    var description: String?
}

struct Productsf{
    var productName : String?
    var productImage : NSData?
    var productPrice : String?
    var productCat : String?
}


let myData : [[Product]] = [mugs, tShirt, shoes, PaperCup]

let products :[Product] = [
    Product(categoryName: "Mugs", products: [ProductDetails(name: "Water Mug", imageName: UIImage(named: "designbottel") , price: "100$", description: "Design By Artisit Abdullah")]),
    Product(categoryName: "Mugs", products: [ProductDetails(name: "Water Mug", imageName: UIImage(named: "waterbottal") , price: "60$", description: "Flat")]),
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: " ", imageName: UIImage(named: "artShirt") , price: "80$", description: "Design By Fahad")]),
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: "T-Shirt art", imageName: UIImage(named: "artShirt2") , price: "ff", description: "Degign By Khaled")]),
    Product(categoryName: "Shoes", products: [ProductDetails(name: "Art Shoes", imageName: UIImage(named: "artShoes") , price: "150$", description: "Design By Hamad")])]



var mugs : [Product] = [
    Product(categoryName: "Mugs", products: [ProductDetails(name: "Water Mug", imageName: UIImage(named: "designbottel") , price: "100$", description: "Design By Artisit Abdullah")]),
    Product(categoryName: "Mugs", products: [ProductDetails(name: "arty Mu", imageName: UIImage(named: "waterbottal") , price: "80$", description: "Flat")]),
    Product(categoryName: "Mugs", products: [ProductDetails(name: "lavender", imageName: UIImage(named: "fresskoArt") , price: "70$", description: "Flat")]),
    Product(categoryName: "Mugs", products: [ProductDetails(name: "lavonfressko", imageName: UIImage(named: "fresskoCup") , price: "50$", description: "Flat")])
]
let shoes : [Product] = [
    Product(categoryName: "Shoes", products: [ProductDetails(name: "Art hjh Shoes", imageName: UIImage(named: "artShoes") , price: "150$", description: "Design By Hamad")]),
    Product(categoryName: "Shoes", products: [ProductDetails(name: "design jh", imageName: UIImage(named: "artShoes1") , price: "150$", description: "Design By Hamad")]),
    Product(categoryName: "Shoes", products: [ProductDetails(name: "Art Shoes", imageName: UIImage(named: "atrShoes2") , price: "150$", description: "Design By Hamad")]),
    Product(categoryName: "Shoes", products: [ProductDetails(name: "Art Shoes", imageName: UIImage(named: "shoes") , price: "150$", description: "Design By Hamad")])
]
let tShirt : [Product] = [
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: "T-Sirt Art", imageName: UIImage(named: "artShirt") , price: "80$", description: "Design By Fahad")]),
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: "T-Shirt art", imageName: UIImage(named: "artShirt2") , price: "70$", description: "Degign By Khaled")]),
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: "T-Shirt art", imageName: UIImage(named: "t-shirt") , price: "70$", description: "Degign By Khaled")]),
    Product(categoryName: "T-Shirt", products: [ProductDetails(name: "T-Shirt art", imageName: UIImage(named: "t-shrits") , price: "70$", description: "Degign By Khaled")])
]
let PaperCup : [Product] = [
    
    Product(categoryName: "Paper cup", products: [ProductDetails(name: "Paper flat", imageName: UIImage(named: "paperCup") , price: "15$", description: "Design By Faisal")]),
    Product(categoryName: "Paper cup", products: [ProductDetails(name: "cup Design", imageName: UIImage(named: "DesignPaperCup1") , price: "15$", description: "Degign By Khaled")]),
    Product(categoryName: "Paper cup", products: [ProductDetails(name: "cup Design", imageName: UIImage(named: "paperCup") , price: "15$", description: "Degign By Khaled")]),
    Product(categoryName: "Paper cup", products: [ProductDetails(name: "cup Design", imageName: UIImage(named: "paperCup1") , price: "15$", description: "Degign By Khaled")])


]

