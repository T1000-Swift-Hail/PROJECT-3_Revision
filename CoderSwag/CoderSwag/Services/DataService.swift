

import Foundation

class DataService {
    static let instance = DataService()
    private let categories = [
        Category(title: "alhilal Uniform", imageName: "alhilalUniform"),
        Category(title: "alhilal Shoes", imageName: "alhilalShoes"),
        Category(title: "alhilal Bags", imageName: "alhilalBags"),
        Category(title: "alhilal Other", imageName: "alhilalOther")
       
    ]
    
    private let Uniform = [
        Product (title: "Team uniform", price: "$54", imageName: "alhilal1Uniform"),
        Product (title: "spare outfit", price: "$62", imageName: "alhilal2Uniform"),
        Product (title: "Second reserve outfit", price: "$53", imageName: "alhilal3Uniform"),
        Product (title: "Third reserve outfit", price: "$57", imageName: "alhilal4Uniform")
        
    ]
    
    private let Shoes = [
        Product (title: "Italian sport boots", price: "$54", imageName: "alhilal1Shoes"),
        Product (title: "Japanese sport shoes", price: "$44", imageName: "alhilal2Shoes"),
        Product (title: "Portuguese sport boots", price: "$61", imageName: "alhilal3Shoes"),
        Product (title: "Spanish sport boots", price: "$83", imageName: "alhilal4Shoes")
    ]
    
    private let Bags = [
        Product (title: "Sports bag size 12", price: "$59", imageName: "alhilal1Bags"),
        Product (title: "Sports bag size 13", price: "$60", imageName: "alhilal2Bags"),
        Product (title: "Sports bag size 14", price: "$48", imageName: "alhilal3Bags"),
        Product (title: "Sports bag size 15", price: "$48", imageName: "alhilal5Bags"),
        Product (title: "Sports bag size 16", price: "$48", imageName: "alhilal4Bags"),

    ]
   

    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "alhilal Bags":
            return getShirts()
        case "alhilal Uniform":
            return getHats()
        case "alhilal Shoes":
            return getHoodies()
        case "alhilal Other":
            return getDigitalGoods()

        
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return Uniform
    }
    
    func getHoodies() -> [Product] {
        return Shoes
    }
    
    func getShirts() -> [Product] {
        return Bags
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}















