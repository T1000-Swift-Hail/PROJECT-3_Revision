//
//  ImageVC.swift
//  QizeApp
//
//  Created by Hind Alharbi on 12/1/21.
//

import UIKit

class ImageVC: UIViewController {
    
    @IBOutlet weak var abcImage: UIImageView!
    @IBOutlet weak var mathImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        abcImage.image = UIImage(res: .imageTwo)
        mathImage.image = UIImage(res: .imageOne)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mathClick(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Hey Kids", message: "Click Ok to learn ABC!", preferredStyle: .alert)
              let okAction = UIAlertAction(title: "OK", style: .default, handler: { al in
                self.performSegue(withIdentifier: "math", sender: nil)
              })
              alert.addAction(okAction)
              self.present(alert , animated : true , completion : nil)

    }
    

    @IBAction func abcClick(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Hey Kids", message: "Click Ok to learn Numbers!", preferredStyle: .alert)
              let okAction = UIAlertAction(title: "OK", style: .default, handler: { al in
                self.performSegue(withIdentifier: "ABC", sender: nil)
              })
              alert.addAction(okAction)
              self.present(alert , animated : true , completion : nil)
    }
}


