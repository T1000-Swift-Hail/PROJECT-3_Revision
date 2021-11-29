//
//  CustomerData+CoreDataProperties.swift
//  Project-3
//
//  Created by Majed Alshammari on 24/04/1443 AH.
//
//

import Foundation
import CoreData


extension CustomerData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CustomerData> {
        return NSFetchRequest<CustomerData>(entityName: "CustomerData")
    }


}

extension CustomerData : Identifiable {

}
