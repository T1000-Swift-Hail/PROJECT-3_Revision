//
//  NewTaskShopping+CoreDataProperties.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension NewTaskShopping {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewTaskShopping> {
        return NSFetchRequest<NewTaskShopping>(entityName: "NewTaskShopping")
    }

    @NSManaged public var task: String?

}

extension NewTaskShopping : Identifiable {

}
