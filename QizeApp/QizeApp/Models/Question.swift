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
    let text: String
    let answer: String
    //let number: UIImage?

    init(q: String, a: String) {
        text = q
        answer = a
    }
}
