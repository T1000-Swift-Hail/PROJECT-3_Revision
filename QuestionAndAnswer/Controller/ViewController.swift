//
//  ViewController.swift
//  QuestionAndAnswer
//
//  Created by Mastorah on 27/11/2021.


import UIKit


class ViewController: UIViewController {



    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButton: [UIButton]!

    var Qustions = [Qustion]()
    var Qnumber = Int()
    var AnswerNumber = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
        Qustions = [Qustion(Qustion:"The day when Adam, peace be upon him, was created?",Answers: ["Friday","Monday","Wednesday","Tuesday"], Answer: 0),
                    Qustion(Qustion: "What is the capital of China?", Answers: ["Taiwan","HongKong","Beijing","Sol" ], Answer: 2),Qustion(Qustion: "What is the political capital of the United States of America?", Answers: ["New York","Washington","Ottawa","Los Angeles"], Answer: 1),Qustion(Qustion: "What is the metal that is characterized by its lightness?", Answers: ["Lithium", "Sodium","Potassium" ,"Magnesium"], Answer:0 ),Qustion(Qustion: "In which city is the Olive Mosque located?", Answers: ["Tunisia","Morocco","Libya","Turkey"], Answer: 1),Qustion(Qustion: "Where The River Nile springs ?", Answers: ["Uganda", "Sudan","Kenya","Egypt"], Answer:0)]


    click()

    }
    func click() {
        if Qustions.count > 0 {
            Qnumber = 0
            questionLabel.text = Qustions[Qnumber].Qustion
            AnswerNumber = Qustions[Qnumber].Answer


          for i in 0..<answerButton.count {
              answerButton[i].setTitle(Qustions[Qnumber].Answers[i], for: UIControl.State.normal)
      }
          Qustions.remove(at: Qnumber)
            
        }else{
            print("Done!!")
    }

}


    @IBAction func button1(_ sender:UIButton) {
        if AnswerNumber == 0 {
            click()
        }else{
            print("Worng")
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if AnswerNumber == 1 {
            click()
        }else{
            print("Worng")
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        if AnswerNumber == 2 {
            click()
        }else{
            print("Worng")
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        if AnswerNumber == 3 {
            click()
        }else{
            print("Worng")
        }
    }

}

