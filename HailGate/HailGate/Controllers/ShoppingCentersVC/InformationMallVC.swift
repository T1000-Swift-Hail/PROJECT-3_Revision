//
//  ViewController.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import UIKit



class InformationMallVC: UIViewController {
    
    let mallFirstInformation = "\(Mall.firstMall.rawValue)"
    let mallSecandInformation = "\(Mall.secondMall.rawValue)"
    let mallThirdInformation = "\(Mall.threeMall.rawValue)"
    
    var decMallInformaition : [String: String] = ["GRANDMALL": "Grand Mall Hail is the favorite destination of shopping and leisure here you will find international brands of retail, restaurants, and FEC under one roof.","GardenMall": "one of the most important and largest commercial centers in Hail, and it has 3 floors and includes a very large variety of shops, bearing the brands " , "SALMAMALL" : "Slama Mall By Arabian Centres Is Closed .."]
    //   First Mall Name ....
    @IBOutlet weak var firstMallLBL: UILabel!
    @IBOutlet weak var firstInformationLBL: UILabel!
    //    Second Mall Names ....
    @IBOutlet weak var secandMallLBL: UILabel!
    @IBOutlet weak var secandInformationLBL: UILabel!
    //    Third Mall Name .....
    @IBOutlet weak var thirdMallLBL: UILabel!
    @IBOutlet weak var thirdInformationLBL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decMallSection()
        
        view.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        
    }
    fileprivate func decMallSection() {
        //        To print Information for enum Mall and Values of Dictionaries.....
        firstMallLBL.text = mallFirstInformation
        firstInformationLBL.text = decMallInformaition["GRANDMALL"]
        
        secandMallLBL.text = mallSecandInformation
        secandInformationLBL.text = decMallInformaition["GardenMall"]
        thirdMallLBL.text = mallThirdInformation
        thirdInformationLBL.text = decMallInformaition["SALMAMALL"]
    }
}
