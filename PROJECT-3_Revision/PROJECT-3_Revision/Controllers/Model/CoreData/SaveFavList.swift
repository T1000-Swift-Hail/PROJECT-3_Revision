//
//  SaveFavList.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 26/04/1443 AH.
//

import Foundation
import CoreData

class SaveFavoritList {
    
    static let shared = SaveFavoritList()
    lazy var context = persistentContainer.viewContext
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "SaveList")
        container.loadPersistentStores(completionHandler: {
            (storeDescription, error) in
            if let error = error {
                fatalError("Unresolved error \(error),\(error.userInfo)")
            }
        })
        return container
}
}
