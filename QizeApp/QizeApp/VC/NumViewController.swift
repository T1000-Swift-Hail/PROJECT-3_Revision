//
//  NumViewController.swift
//  QizeApp
//
//  Created by Hind Alharbi on 12/1/21.
//

import UIKit

class NumViewController: UIViewController {
    
    @IBOutlet weak var scoreNum: UILabel!
    
    @IBOutlet weak var mathLabel: UILabel!
    
    @IBOutlet weak var numTrueBtn: UIButton!
    
    @IBOutlet weak var numFalseBtn: UIButton!
    
    @IBOutlet weak var greatJobImage: UIImageView!
    
    @IBOutlet weak var numProsse: UIProgressView!
    
    var quizee = Quize()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func trueBtn(_ sender: UIButton) {
        
        let userGotItRight = quizee.checkAnswerNum(userAnswer: "True")
         
         
         if userGotItRight {
             numTrueBtn.backgroundColor.self = UIColor.green
             greatJobImage.image = UIImage(named: "goodJob")
         }
         quizee.nextQuestion()
         Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
   
    @IBAction func falseBtn(_ sender: UIButton) {
        if sender.isSelected == sender.isSelected{
            sender.backgroundColor = UIColor.red
            greatJobImage.image = UIImage(named: "wrong")
                   }
         quizee.nextQuestion()
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
        
    
@objc func updateUI() {
    mathLabel.text = quizee.getQuestionText()
    numProsse.progress = quizee.getProgress()
    scoreNum.text = "Score: \(quizee.getScore())"
    
    numTrueBtn.backgroundColor = UIColor.clear
    numFalseBtn.backgroundColor = UIColor.clear
    greatJobImage.image = UIImage.init(named: "")
}
}

