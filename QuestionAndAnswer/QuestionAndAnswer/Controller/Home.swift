//
//  Home.swift
//  QuestionAndAnswer
//
//  Created by Mastorah on 28/11/2021.
//

import UIKit




class Home: UIViewController {
       

    
    @IBAction func customer(_ sender: UIButton) {
      
    }
    @IBAction func Communication(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        imageinmation()
    }
//inmation
    @IBOutlet weak var imageView: UIImageView!
    func imageinmation () {
        imageView.transform = imageView.transform.rotated(by: -200)
        imageView.transform.tx = -view.frame.width
        imageView.transform = imageView.transform.scaledBy( x: 2, y: 2)
    
         UIView.animate(withDuration: 1, delay: 0, options: [.curveEaseIn], animations: {
            
            self.imageView.transform = self.imageView.transform.rotated(by: 200)
            self.imageView.transform.tx = 0
            self.imageView.transform = self.imageView.transform.scaledBy( x:0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
    }
        
    
}

