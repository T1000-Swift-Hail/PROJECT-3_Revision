//
//  ViewController.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var collection: UICollectionView!
    

    
    var logosImage = [UIImage(named: "hospital"), UIImage(named: "University")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collection.delegate = self
        collection.dataSource = self
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logosImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logoCell", for: indexPath) as? LogosCollectionViewCell else {return UICollectionViewCell()}
        cell.logoImage.image = logosImage[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "MapKit", sender: nil)
        default:
            performSegue(withIdentifier: "Ward", sender: nil)
            
            
        }
        
}

}

