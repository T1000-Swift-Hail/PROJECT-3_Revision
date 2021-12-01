//
//  struct.swift
//  QuestionAndAnswer
//
//  Created by Mastorah on 01/12/2021.
//

import Foundation

struct Qustion {
    var Qustion:String
    var Answers:[String]
    var Answer:Int
}

extension Qustion {

        func TheQustion () {
            print("Qustion: \(Qustion) and \(Answers.description) is\(Answer)")
        }
}
