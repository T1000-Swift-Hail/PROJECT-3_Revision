//
//  UserCD.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 24/04/1443 AH.
//

import Foundation
import CoreData

@objc(UserCD)
public class UserCD: NSManagedObject {
    
    @NSManaged public var username: String
    @NSManaged public var email : String
    @NSManaged public var passWord: String
    @NSManaged public var  country : String
    @NSManaged public var canRate: Bool

    
    func create(gamers: Gamer) {

//        let context = PersistentCD.shared.context
//        let gamercd = UserCD(context: context)
//        gamescd.name = games.name
//        gamescd.descriptionofGame = games.descriptionofGame
//        gamescd.type = (games.type).rawValue
//        gamescd.rate = games.rate
        
        PersistentCD.shared.saveContext()

    }

}
