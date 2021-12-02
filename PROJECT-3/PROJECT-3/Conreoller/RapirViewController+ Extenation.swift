//
//  RapirViewController+ Extenation.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 02/12/2021.
//

import Foundation
import UIKit
// extenstion for class Rapir View Controller.
extension RapirViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    func dataSetDelegate (){
        
        collectionViewInViewController.delegate = self
        collectionViewInViewController.dataSource = self
        
    }
    // function for number of itmes
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return phoneCompanies.companiesImages.count
    }
  //  function for collection view cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColllectionCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        let imageName = phoneCompanies.companiesImages[indexPath.row].rawValue
        cell.imegeCollection.image = UIImage(named: imageName)
        cell.imegeCollection.clipsToBounds = true
        cell.imegeCollection.layer.cornerRadius = 1
        cell.imegeCollection.layer.borderColor = UIColor.black.cgColor
        cell.imegeCollection.layer.borderWidth = 1
        
        return cell
        
    }
    // function when customer make a click on itmes
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageName = phoneCompanies.companiesImages[indexPath.row].rawValue
        selectedImageData = UIImage(named: imageName)
        
    }
        //function prepare to display in second view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.dataImageEntered = selectedImageData
        vc.dataTextEntered = selectedTextData
        
    }
   // function height for the raw
    func CollectionView(_ CollectionView: UICollectionView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
        
    }
  //  function alert massage for customer
    func DisplayAlert(withTitle title: String, message: String,isEntered: Bool) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title:NSLocalizedString("Ok", comment: ""), style: .default, handler: { action in
            if isEntered {
                self.performSegue(withIdentifier: "second", sender: nil)
            } else {
                
            }
            
        })
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
}




