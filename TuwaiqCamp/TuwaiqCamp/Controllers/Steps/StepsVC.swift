//
//  StepsVC.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 25/04/1443 AH.
//

import UIKit

class StepsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        animationStepOne()
        animationStepTwo()
        animationStepThree()
        animationStepFour()
    }
    
    @IBOutlet weak var stepOne: UILabel!
    @IBOutlet weak var stepTwo: UILabel!
    @IBOutlet weak var stepThree: UILabel!
    @IBOutlet weak var stepFour: UILabel!
    
    //To add the animation for the lable
    func animationStepOne(){
        stepOne.transform = CGAffineTransform.init(translationX: 0, y: 400)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.stepOne.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
    }
    
    func animationStepTwo(){
        stepTwo.transform = CGAffineTransform.init(translationX: 0, y: 400)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.stepTwo.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
    }
    
    func animationStepThree(){
        stepThree.transform = CGAffineTransform.init(translationX: 0, y: 400)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.stepThree.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
    }
    
    func animationStepFour(){
        stepFour.transform = CGAffineTransform.init(translationX: 0, y: 400)
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.stepFour.transform = CGAffineTransform.init(translationX: 0, y: 0)
        }, completion: nil)
    }
}


