//
//  DBManager.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//
//

import Foundation
import UIKit

class DBManager {
    static let shared = DBManager.init()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func fetchAllUsers(completion: @escaping ([User]) -> Void) {
        do {
            var users = [User]()
            users = try context.fetch(User.fetchRequest())
//            print("Users \(users)")
            
            completion(users)
        } catch {
            print("Getting users failed")
        }
    }
    
    func createUser(with: Users, completion: @escaping () -> Void) {
        let newItem = User(context: context)
        newItem.username = with.username
        newItem.password = with.password
        newItem.canRate = with.canRate
        newItem.email = with.email
        newItem.country = with.country
        
        do {
            globalUser = newItem
            try context.save()
            completion()
        } catch {
            print("User Adding Failed")
        }
    }
    
    func updateUser(user: User, completion: @escaping () -> Void) {
        do {
            try context.save()
            completion()
        } catch {
            print("User Adding Failed")
        }
    }
    
    
    func addGame(with: Game) {
        let game = Games(context: context)
        game.name = with.name
        game.desc = with.desc
        game.imageURL = with.imageURL
        game.comments = with.comments
        game.rate = with.rate
        game.type = Int32(with.type.rawValue)
        
        do {
            try context.save()
        } catch {
            print("User Adding Failed")
        }
    }
    
    func fetchAllGames(completion: @escaping ([Games]) -> Void) {
        do {
            var games = [Games]()
            games = try context.fetch(Games.fetchRequest())
            completion(games)
        } catch {
            print("Getting users failed")
        }
    }
    
    func updateGame(game: Games, completion: @escaping () -> Void) {
        do {
            try context.save()
            completion()
        } catch {
            print("User Adding Failed")
        }
    }
}
