//
//  ModelDataBase.swift
//  ArtistHub
//
//  Created by Anas Hamad on 23/04/1443 AH.
//

import Foundation
import UIKit
import FirebaseDatabase



//
//
//public class DatabaseManager {
//  static let shared = DatabaseManager()
//  private let database = Database.database().reference()
//  public func canCreateNewUser(with email:String, username:String, completion:(Bool) -> Void) {
//    completion(true)
//  }
//  public func insertNewUser(with email:String, username:String, completion: @escaping  (Bool) -> Void) {
//    database.child(email.safeDataBase()).setValue(["username":username]) { error , _ in
//      if error == nil {
//        completion(true)
//        return
//      } else {
//        completion(false)
//        return
//      }
//    }
//  }
//}
