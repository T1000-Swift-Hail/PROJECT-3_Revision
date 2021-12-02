//
//  DetalsVC.swift
//  Shoping
//
//  Created by mac on 26/04/1443 AH.
//

import UIKit

class DetalsVC: UIViewController {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var prices: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    var slecetProduct : Plant? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = slecetProduct?.photo
        name.text = slecetProduct?.name
        prices.text = "\(slecetProduct!.price) SAR"
       
     
        // Do any additional setup after loading the view.
    }


}
