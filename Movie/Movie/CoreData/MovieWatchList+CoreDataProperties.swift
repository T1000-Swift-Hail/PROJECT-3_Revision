//
//  MovieWatchList+CoreDataProperties.swift
//  Movie
//
//  Created by Asma on 01/12/2021.
//
//

import Foundation
import CoreData


extension MovieWatchList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MovieWatchList> {
        return NSFetchRequest<MovieWatchList>(entityName: "MovieWatchList")
    }

    @NSManaged public var posterMovie: String?
    @NSManaged public var titleMovie: String?
    @NSManaged public var isWatched: Bool

}

extension MovieWatchList : Identifiable {

}
