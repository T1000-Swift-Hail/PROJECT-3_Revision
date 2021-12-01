//
//  Quize.swift
//  QizeApp
//
//  Created by Hind Alharbi on 11/29/21.
//

import Foundation

struct Quize{

        var questionNumber = 0
        var score = 0
        
            
       var quizNum = [
        Question(q: "1 ?", a: "True"),
            Question(q: "2 ?", a: "True"),
            Question(q: "3 ?", a: "True"),
            Question(q: "4 ?", a: "True"),
            Question(q: "5 ?", a: "True"),
            Question(q: "6 ?", a: "True"),
            Question(q: "7 ?", a: "True"),
            Question(q: "8 ?", a: "True"),
            Question(q: "9 ?", a: "True"),
            Question(q: "10 ?", a: "True")
        ]
        
        func getQuestionText() -> String {
            return quizNum[questionNumber].text
        }
        
        func getProgress() -> Float {
            return Float(questionNumber) / Float(quizNum.count)
        }
        
        mutating func getScore() -> Int {

            return score
        }
        
         mutating func nextQuestion() {
            
                     if questionNumber + 1 < quizNum.count {
                         questionNumber += 1
                     } else {
                         questionNumber = 0
                     }
        }
        
        mutating func checkAnswerNum(userAnswer: String) -> Bool {
            
            switch userAnswer == quizNum[questionNumber].answer {
            
            case true:
                score += 1
            
            case false:
                score = 0
            
            }
            return true
        }

        
     mutating func doneQuestion() {
            if questionNumber + 1 > quizNum.count {
                questionNumber = 0
        }
    }
    }

