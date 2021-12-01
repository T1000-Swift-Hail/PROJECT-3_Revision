//
//   QuizBrain.swift
//  QizeApp
//
//  Created by Hind Alharbi on 11/29/21.
//

import Foundation
import UIKit

struct QuizBrain{

    var questionNumber = 0
    var score = 0
    
        
   var quiz = [
        Question(q: "A ?", a: "True"),
        Question(q: "B ?", a: "True"),
        Question(q: "C ?", a: "True"),
        Question(q: "D ?", a: "True"),
        Question(q: "E ?", a: "True"),
        Question(q: "F ?", a: "True"),
        Question(q: "G ?", a: "True"),
        Question(q: "H ?", a: "True"),
        Question(q: "I ?", a: "True"),
        Question(q: "J ?", a: "True"),
        Question(q: "K ?", a: "True"),
        Question(q: "L ?", a: "True")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {

        return score
    }
    
     mutating func nextQuestion() {
        
                 if questionNumber + 1 < quiz.count {
                     questionNumber += 1
                 } else {
                     questionNumber = 0
                 }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        
        switch userAnswer == quiz[questionNumber].answer {
        
        case true:
            score += 1

        case false:
            score = 0
        
        }
        return true
    }

 mutating func doneQuestion() {
        if questionNumber + 1 > quiz.count {
            questionNumber = 0
    }
}
}

