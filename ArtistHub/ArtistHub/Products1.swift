//
//  Product.swift
//  ArtistHub
//
//  Created by Anas Hamad on 26/04/1443 AH.
//
import Foundation
import CoreData

@objc(CDProducts)

class CDProducts : NSManagedObject{
    
    @NSManaged var productName : String?
    @NSManaged var productImage : NSData?
    @NSManaged var productPrice : String?
    @NSManaged var productCat : String?
    @NSManaged var deletedData : Data?
    @NSManaged var id : Int32
    
    func create(productss: Productsf) {

    
            let context = PersistentStorage.shared.context
        let cdproducts = CDProducts(context:context)
        cdproducts.productCat = productss.productCat
        cdproducts.productImage = productss.productImage
        cdproducts.productPrice = productss.productPrice
        cdproducts.productName = productss.productName
       
        PersistentStorage.shared.saveContext()

    }
    
}
