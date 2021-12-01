//
//  Games+CoreDataProperties.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension Games {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Games> {
        return NSFetchRequest<Games>(entityName: "Games")
    }

    @NSManaged public var desc: String?
    @NSManaged public var name: String?
    @NSManaged public var rate: Int32
    @NSManaged public var type: Int32
    @NSManaged public var comments: String?
    @NSManaged public var imageURL: String?

}

extension Games : Identifiable {

}
