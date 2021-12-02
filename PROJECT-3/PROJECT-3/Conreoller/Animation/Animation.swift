//
//  Animation.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 02/12/2021.
//

import UIKit
//Animation for the Rapir View Controller
class Animation: UIViewController {
    var screenSize:CGRect!


       var screenWidth:CGFloat!


       var screenHeight:CGFloat!
    
    @IBOutlet weak var car1AnimationImageView: UIImageView!
    @IBOutlet weak var car2AnimationImageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewAnimation()
        textViewAnimation()
        buttonAnimation()
        getScreenSize()


        self.car1AnimationImageView.center = CGPoint(x: 0, y: Int(Int(self.screenHeight) / 2))


        self.car2AnimationImageView.center = CGPoint(x: 0, y: Int(Int(self.screenHeight) / 2))


        moveBugLeft()


        moveBugRight()


    }




    func getScreenSize()  {


        screenSize = UIScreen.main.bounds


        screenHeight = screenSize.height


        screenWidth = screenSize.width


       


    }


    


    func moveBugLeft() {


        getScreenSize()


        car1AnimationImageView.isHidden = true


        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut , .allowUserInteraction], animations: { self.car1AnimationImageView.center = CGPoint(x: 0, y: Int(Int(self.screenHeight) / 2))}, completion: {_ in self.faceBugLeft()})


    }


    


    func faceBugLeft() {


        getScreenSize()


        car1AnimationImageView.isHidden = false


        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut , .allowUserInteraction], animations: { self.car1AnimationImageView.center = CGPoint(x: Int(self.screenWidth), y: Int(Int(self.screenHeight) / 2))}, completion: {_ in self.moveBugLeft()})


    }


    


    func moveBugRight() {


        getScreenSize()


        car2AnimationImageView.isHidden = true


        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut , .allowUserInteraction], animations: { self.car2AnimationImageView.center = CGPoint(x: Int(self.screenWidth), y: Int(Int(self.screenHeight) / 2))}, completion: {_ in self.faceBugRight()})


    }


    


    func faceBugRight() {


        getScreenSize()


        car2AnimationImageView.isHidden = false


        UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseInOut , .allowUserInteraction], animations: { self.car2AnimationImageView.center = CGPoint(x: 0, y: Int(Int(self.screenHeight) / 2))}, completion: {_ in self.moveBugRight()})


    }





    
    // function for image animation
    func imageViewAnimation() {
        
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.alpha = 1
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy(x: 0.5, y: 0.5)
        }, completion: nil)
        
    }
    // function for label in Rapir View Controller animation
    @IBOutlet weak var titleName: UILabel!
    
    fileprivate func textViewAnimation() {
        titleName.transform = titleName.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.titleName.transform = self.titleName.transform.scaledBy(x: 2, y: 2)
        })
        uiAnimationText.startAnimation()
    }
    // function for button in Rapir View Controller animation
    @IBOutlet weak var button: UIButton!
    
    fileprivate func buttonAnimation() {
        button.transform = button.transform.scaledBy(x: 0.5, y: 0.5)
        let uiAnimationText = UIViewPropertyAnimator(duration: 2, curve: .easeIn, animations: {
            self.button.transform = self.button.transform.scaledBy(x: 2, y: 2)
        })
        uiAnimationText.startAnimation()
    }
  
}

       


