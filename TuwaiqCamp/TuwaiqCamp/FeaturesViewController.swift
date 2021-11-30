//
//  FeaturesViewController.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 24/04/1443 AH.
//

import UIKit

//class FeaturesViewController: UIViewController , UICollectionViewDataSource,  UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//
//    
//    @IBOutlet weak var FeaturesCollection: UICollectionView!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        FeaturesCollection.dataSource = self
//        FeaturesCollection.delegate = self
//        FeaturesCollection.collectionViewLayout = UICollectionViewLayout()
//        FeaturesCollection.reloadData()
//        
//    }
//    
//    
//    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//        return cells.count
//    }
//    
//    
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturesCell", for: indexPath) as! FeaturesCollectionViewCell
//        cell.setup(with: cells[indexPath.row])
//        return cell
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        return CGSize(width: 400 , height: 300)
//    }
//    
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 0
//    }
//}
//
//
//
//
//
//
//
