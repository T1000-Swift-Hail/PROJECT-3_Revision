//
//  WorkersInfo.swift
//  Project-3
//
//  Created by Majed Alshammari on 23/04/1443 AH.
//

import Foundation

enum WorkersJobs : String {
    case Plumber
    case Electrical
    case Carpenter
    case Welder
    case Cleaner
    case Painter
}

protocol WorkersProperty {
    var job:String { get set }
    var description:String { get set }
}


class Workers:WorkersProperty {
    var job: String
    var description: String
    
    init(job: String, description: String) {
        self.job = job
        self.description = description
    }
}


let plumber = Workers(job: WorkersJobs.Plumber.rawValue, description: "A person who fits and repairs the pipes, fittings, and other apparatus of water supply, sanitation, or heating systems.")

let electrical = Workers(job: WorkersJobs.Electrical.rawValue, description: "An electrician is a tradesman specializing in electrical wiring of buildings, transmission lines, stationary machines, and related equipment.")

let carpenter = Workers(job: WorkersJobs.Carpenter.rawValue, description: "Carpentry is a skilled trade and a craft in which the primary work performed is the cutting, shaping and installation of building materials during the construction of buildings")

let welder = Workers(job: WorkersJobs.Welder.rawValue, description: "Welders create or repair metal products or goods by using heat to fuse multiple metals, such as brass, stainless steel, or aluminum.")
let cleaner = Workers(job: WorkersJobs.Cleaner.rawValue, description: "Cleaning operatives may specialise in cleaning particular things or places, such as window cleaners, They may clean offices at night or houses during the workday.")
let painter = Workers(job: WorkersJobs.Painter.rawValue, description: "Painters use paint, tools, and materials such as plaster, to change the appearance and texture of buildings, walls, and other structures.")



