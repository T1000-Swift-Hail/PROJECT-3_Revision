//
//  NewList.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 24/04/1443 AH.
//

import Foundation
import UIKit

protocol Tasks {

    var taskName : String {get}
    var taskPhoto : UIImage {get}

}

struct Task :Tasks{
    
    var taskName : String
    var taskPhoto : UIImage
}
