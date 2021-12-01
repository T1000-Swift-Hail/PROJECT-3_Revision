//
//  MainVC.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 25/04/1443 AH.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var labelView: UILabel!
    
    
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Animations()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func goToNext(_ sender: Any) {
        performSegue(withIdentifier: "ShowNotes", sender: nil)
    }
    // This is Animations and Use Closure
    fileprivate func Animations() {
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.ImageView.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.ImageView.alpha = 0
            } completion: { _ in
            }
            
            UIView.animate(withDuration: 1, delay: 0.6, options: .curveEaseOut) {
                self.labelView.transform = CGAffineTransform(rotationAngle: 120)
            } completion: { _ in
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.labelView.alpha = 0
                } completion: { _ in
                }
                
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.textView.transform = CGAffineTransform(rotationAngle: 120)
                } completion: { _ in
                    UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                        self.textView.alpha = 0
                    } completion: { _ in
                    }
                }
            }
        }
    }
}
