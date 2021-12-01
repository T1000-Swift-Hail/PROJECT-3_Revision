//
//  CustomerData+CoreDataProperties.swift
//  Project-3
//
//  Created by Majed Alshammari on 25/04/1443 AH.
//
//

import Foundation
import CoreData


extension CustomerData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CustomerData> {
        return NSFetchRequest<CustomerData>(entityName: "CustomerData")
    }

    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var phoneNumber: String?
    @NSManaged public var isLogin: Bool
    @NSManaged public var password: String?

}

extension CustomerData : Identifiable {

}
