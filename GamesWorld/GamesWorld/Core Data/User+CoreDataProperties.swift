//
//  User+CoreDataProperties.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var canRate: Bool
    @NSManaged public var country: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?
    @NSManaged public var username: String?

}

extension User : Identifiable {

}
