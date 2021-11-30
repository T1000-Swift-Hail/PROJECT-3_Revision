//
//  GamesWorldCD.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 24/04/1443 AH.
//

import Foundation
import CoreData

@objc(GameCD)
public class GameCD: NSManagedObject {
    
    @NSManaged public var name : String
    @NSManaged public var descriptionofGame : String
    @NSManaged public var type : String
    @NSManaged public var rate : Int32

    func create(games: Game) {

        let context = PersistentCD.shared.context
        let gamescd = GameCD(context: context)
        gamescd.name = games.name
        gamescd.descriptionofGame = games.descriptionofGame
        gamescd.type = (games.type).rawValue
        gamescd.rate = games.rate
        
        PersistentCD.shared.saveContext()

    }

}
