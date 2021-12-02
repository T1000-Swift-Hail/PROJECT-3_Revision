//
//  MilestonesVC.swift
//  HailGate
//
//  Created by Monafh on 26/04/1443 AH.
//

import UIKit

class MilestonesVC: UIViewController {
    
    //    First Container .....
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titelFirstMuseum: UILabel!
    @IBOutlet weak var firstMuseumInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        //        First Information For Milestones .....
        imageView.image = UIImage(named: "Museum")
        titelFirstMuseum.text = "Hail Regional Museum"
        firstMuseumInfo.text = "It tells the history of a prehistoric period in the Arabian Peninsula , passing through the beginnings of Islam to the current stage."
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Animations()
    }
    
    fileprivate func Animations() {
        
        imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        imageView.alpha = 0
        
        UIKit.UIView.animate(withDuration: 2, delay: 2, options: [.curveEaseOut], animations: {
            self.imageView.transform = self.imageView.transform.scaledBy(x:0.5, y: 0.5)
            self.imageView.alpha = 1
        }, completion: nil)
        
        titelFirstMuseum.transform = titelFirstMuseum.transform.scaledBy(x: 2, y: 2)
        titelFirstMuseum.alpha = 0
        
        UIKit.UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseOut], animations: {
            self.titelFirstMuseum.transform = self.titelFirstMuseum.transform.scaledBy(x:0.5, y: 0.5)
            self.titelFirstMuseum.alpha = 1
        }, completion: nil)
        
        firstMuseumInfo.transform = titelFirstMuseum.transform.scaledBy(x: 2, y: 2)
        firstMuseumInfo.alpha = 1
        
        UIView.animate(withDuration: 1, delay: 0.5, options: .curveEaseOut) {
            self.firstMuseumInfo?.transform = CGAffineTransform(scaleX: 1, y: 1)
            
        } completion: { _ in
            
        }
    }
    
}

