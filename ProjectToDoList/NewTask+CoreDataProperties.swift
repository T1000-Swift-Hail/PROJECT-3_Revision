//
//  NewTask+CoreDataProperties.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 26/04/1443 AH.
//
//

import Foundation
import CoreData


extension NewTask {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NewTask> {
        return NSFetchRequest<NewTask>(entityName: "NewTask")
    }

    @NSManaged public var task: String?

}

extension NewTask : Identifiable {

}
