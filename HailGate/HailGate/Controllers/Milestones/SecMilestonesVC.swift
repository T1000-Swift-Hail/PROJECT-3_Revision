//
//  SecMilestonesVC.swift
//  HailGate
//
//  Created by Monafh on 26/04/1443 AH.
//

import UIKit

class SecMilestonesVC: UIViewController {
    
    //    Second Container ....
    
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var titelSecondMuseum: UILabel!
    @IBOutlet weak var secondMuseumInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        //        Second Information For Milestones ...
        
        secondImageView.image = UIImage(named: "Araf")
        titelSecondMuseum.text = "Araf Castle"
        secondMuseumInfo.text = "The historic Araf Castle in the heart of the city of Hail on top of a mountain overlooking the city It is believed that the castle was built in the year 1840."
        
      
    }
    override func viewWillAppear(_ animated: Bool) {
        Animations()
    }
    
    fileprivate func Animations() {
        
        //        * secondMuseumInfo *
        
        secondImageView.transform = secondImageView.transform.scaledBy(x: 2, y: 2)
        secondImageView.alpha = 0
        
        UIKit.UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
            self.secondImageView.transform = self.secondImageView.transform.scaledBy(x:0.5, y: 0.5)
            self.secondImageView.alpha = 1
        }, completion: nil)
        
        //        * secondMuseumInfo *
        
        titelSecondMuseum.transform = titelSecondMuseum.transform.scaledBy(x: 2, y: 2)
        titelSecondMuseum.alpha = 0
        UIKit.UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            self.titelSecondMuseum.transform = self.titelSecondMuseum.transform.scaledBy(x:0.5, y: 0.5)
            self.titelSecondMuseum.alpha = 1
        }, completion: nil)
        
        //        * secondMuseumInfo *
        secondMuseumInfo.transform = secondMuseumInfo.transform.scaledBy(x: 2, y: 2)
        secondMuseumInfo.alpha = 1
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.secondMuseumInfo?.transform = CGAffineTransform(scaleX: 1, y: 1)
            
        } completion: { _ in
            
        }
    }
}
