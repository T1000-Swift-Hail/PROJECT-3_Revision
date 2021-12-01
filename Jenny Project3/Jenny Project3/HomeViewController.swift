//
//  homeViewController.swift
//  Jenny Project3
//
//  Created by HIND12 on 24/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var LableView: UILabel!
    
    @IBOutlet weak var ImageView2: UIImageView!
    
    @IBOutlet weak var topImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
           Animations()
        // Do any additional setup after loading the view.
    }
    

    
    fileprivate func Animations() { UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
        self.ImageView.transform = CGAffineTransform(rotationAngle: 120)
        
    } completion: { _ in
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.ImageView.alpha = 1
            self.topImageView.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in
            
        }
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.LableView.transform = CGAffineTransform(rotationAngle: 120)
        } completion: { _ in
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.LableView.alpha = 1
            } completion: { _ in
                
            }
            UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                self.ImageView2.transform = CGAffineTransform(rotationAngle: 120)
            } completion: { _ in
                UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
                    self.ImageView2.alpha = 1
                } completion: { _ in
                    
                }
                
            }
        }
        }
    }
    




  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
