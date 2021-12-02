//
//  ViewController.swift
//  Project 3
//
//  Created by Ahmed Alenazi on 23/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController {
 
    
    
    
    @IBOutlet weak var collectionViewPectuers: UICollectionView!
    
    @IBOutlet weak var productCollection: UICollectionView!
    

    var timer : Timer?
    
    
//    var imegeCollectionPass : [UIImage]?
    
    var collectionImeges = Imeges()
    
    let products = Product()
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSet()
      
        timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(anim), userInfo: nil, repeats: true)
        
    }
    
    
  
    @objc func anim (){
        
        let lastItem = collectionViewPectuers.indexPathsForVisibleItems.last
        let currentItem = IndexPath(item: lastItem!.item, section: 0)
        collectionViewPectuers.scrollToItem(at: currentItem, at: .right, animated: false)
        var nextItem = currentItem.item + 1
        
        if nextItem == collectionImeges.imeges.count
        {
            
            nextItem = 0
        }
        let nextIndexPath = IndexPath(item: nextItem, section: 0)
        collectionViewPectuers.scrollToItem(at: nextIndexPath, at: .right, animated: false)
    }
    
   
    
    
}
