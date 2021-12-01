//
//  ShoppingCentersVC.swift
//  HailGate
//
//  Created by Monafh on 25/04/1443 AH.
//

import UIKit

class ShoppingCentersVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let mallInformation = MallCenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        collectionView.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        setDelegate()
    }
}
