//
//  ArtistEdit.swift
//  ArtistHub
//
//  Created by Anas Hamad on 23/04/1443 AH.
//

import Foundation
import UIKit

class ProductListingViewController : UIViewController {
        
    @IBOutlet var collectionRandom: UICollectionView!
    
    

    

    var timer : Timer?
    var currentCellIndex = 0
    
    
    
    
    
  
    
    @IBAction func doneBottun(_ sender: Any) {
        
        performSegue(withIdentifier: "Login", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
        
        timerStartsAction()
        
   
        
        
    }
    
    func timerStartsAction(){
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(transetObject), userInfo: nil, repeats: true)
        
    }
    @objc func transetObject(){
        if currentCellIndex < products.count - 1 {
            currentCellIndex += 1
        }else {
            currentCellIndex = 0
        }
        collectionRandom.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    
    
    @IBAction func addItem(_ sender: Any) {
        
        performSegue(withIdentifier: "addProduct", sender: nil)
        
        
        
    }
    
    
    @IBAction func odersTable(_ sender: Any) {
        
        performSegue(withIdentifier: "orders", sender: nil)
    }
    
    
    
    
    
    
    func desplayAlert(title:String,message:String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OKAY", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    

}
    
   
    
    
    



