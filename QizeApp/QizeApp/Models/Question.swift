//
//  Question.swift
//  QizeApp
//
//  Created by Hind Alharbi on 11/29/21.
//

import Foundation
import UIKit

protocol QuestionMath{
    var text: String {get}
    var answer: String {get}

}
struct Question: QuestionMath{
    var text: String
    
    var answer: String
    

    init(q: String, a: String) {
        text = q
        answer = a
    }
}
