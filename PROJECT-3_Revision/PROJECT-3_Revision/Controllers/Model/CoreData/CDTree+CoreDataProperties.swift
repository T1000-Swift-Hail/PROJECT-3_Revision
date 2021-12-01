//
//  CDTree+CoreDataProperties.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension CDTree {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDTree> {
        return NSFetchRequest<CDTree>(entityName: "CDTree")
    }

    @NSManaged public var image: String?
    @NSManaged public var label: String?

}

extension CDTree : Identifiable {

}
