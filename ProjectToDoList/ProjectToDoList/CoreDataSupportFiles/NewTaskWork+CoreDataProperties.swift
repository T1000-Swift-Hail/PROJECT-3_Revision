//
//  NewTaskWork+CoreDataProperties.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension NewTaskWork {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewTaskWork> {
        return NSFetchRequest<NewTaskWork>(entityName: "NewTaskWork")
    }

    @NSManaged public var task: String?

}

extension NewTaskWork : Identifiable {

}
