//
//  ViewController.swift
//  QizeApp
//
//  Created by Hind Alharbi on 11/28/21.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    var quizBrain = QuizBrain()
    //var quizee = Quize()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func trueclick(_ sender: UIButton){
        
        
       let userGotItRight = quizBrain.checkAnswer(userAnswer: "True")
        
        
        if userGotItRight {
           trueButton.backgroundColor.self = UIColor.green
            imageLabel.image = UIImage(named: "goodJob")
        }
        

        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
  }

    @IBAction func falseClick(_ sender: UIButton) {
        
        if sender.isSelected == sender.isSelected{
            sender.backgroundColor = UIColor.red
            imageLabel.image = UIImage(named: "wrong")

    
                   }
         quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
}


extension ViewController{
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressLabel.progress = quizBrain.getProgress()
        scoreLabel.text = "Score:  \(quizBrain.getScore())"
        
       trueButton.backgroundColor = UIColor.clear
       falseButton.backgroundColor = UIColor.clear
        imageLabel.image = UIImage(named: "")
    }
}


