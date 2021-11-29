//
//  ViewController.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collection: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        
    }
    
    @objc(collectionView:cellForItemAtIndexPath:) func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logoCell", for: indexPath) as! LogosCollectionViewCell
        cell.logoImage.image = logosImage[indexPath.row]
        return cell
    }
    
    @objc func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return logosImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "MapKit", sender: nil)
        default :
            performSegue(withIdentifier: "mmm", sender: nil)
        }
        prepare(for: <#T##UIStoryboardSegue#>, sender: <#T##Any?#>)
        
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 8 , height: (view.frame.height) / 4)
    }

}
