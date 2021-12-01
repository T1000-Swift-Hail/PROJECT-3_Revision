//
//  ViewController.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 23/04/1443 AH.
//

import UIKit

class HomeViewController : UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collection: UICollectionView!
    
    
    //Array of logo images on the home
    var logosImage = [
        UIImage(named: "Overview-1"),
        UIImage(named: "Stages"),
        UIImage(named: "City"),
        UIImage(named: "Features"),
        UIImage(named: "direction"),
        UIImage(named: "click"),
        UIImage(named: "success")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
    }
    
    //Insert the cell at a specific location in the collection view
    @objc(collectionView:cellForItemAtIndexPath:) func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logoCell", for: indexPath) as! LogosCollectionViewCell
        cell.logoImage.image = logosImage[indexPath.row]
        return cell
    }
    
    //function to specify the number of items
    @objc func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logosImage.count
    }
    
    //To move from the home to the details
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "Overview", sender: nil)
        case 1 :
            performSegue(withIdentifier: "Stages", sender: nil)
        case 2 :
            performSegue(withIdentifier: "locations", sender: nil)
        case 3 :
            performSegue(withIdentifier: "Features", sender: nil)
        case 4 :
            performSegue(withIdentifier: "majors", sender: nil)
        case 5 :
            performSegue(withIdentifier: "Steps", sender: nil)
        case 6 :
            performSegue(withIdentifier: "success", sender: nil)
        default :
            performSegue(withIdentifier: "...", sender: nil)
        }
}
    
    //function of determining the width and height of the cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width) - 8 , height: (view.frame.height) / 4)
    }
}
