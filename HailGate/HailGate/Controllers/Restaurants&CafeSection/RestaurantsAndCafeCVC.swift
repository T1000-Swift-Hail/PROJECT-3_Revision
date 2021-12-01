//
//  Restaurants&CafeCVC.swift
//  HailGate
//
//  Created by Monafh on 24/04/1443 AH.


import UIKit


struct Photo {
    let name : String
    let photos : [UIImage]
}


class RestaurantsAndCafeCVC: UIViewController ,  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout   {
    
    var arraysPhoto = [Photo]()
    
    @IBOutlet weak var photoRestaurantsAndCafe: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arraysPhoto = [
            Photo(name: "Restaurants", photos: [UIImage(named: "Home")!,UIImage(named: "Home")!])
            ,
            Photo(name: "Popular Restaurants", photos: [UIImage(named: "Home")!,UIImage(named: "Home")!])
            ,
            Photo(name: "Cafe", photos: [UIImage(named: "Home")!,UIImage(named: "Home")!])
            ,
            Photo(name: "FoodTruck", photos: [UIImage(named: "Home")!,UIImage(named: "Home")!])
        ]
        
        view.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        photoRestaurantsAndCafe.delegate = self
        photoRestaurantsAndCafe.dataSource = self
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arraysPhoto.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arraysPhoto[section].photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RestaurantsAndCafeCell", for: indexPath) as? RestaurantsAndCafeCellCollectionViewCell
        cell?.photosForSection.image = arraysPhoto[indexPath.section].photos[indexPath.row]
        cell?.backgroundColor = UIColor(rgb: 0xFFEAE7D6)
        return cell ?? UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width * 0.45, height: collectionView.frame.width * 0.45)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "sectionHeader", for: indexPath) as! SectionCollectionReusableView
        header.sectionHeaderCV.text = arraysPhoto[indexPath.section].name
        header.backgroundColor = UIColor(rgb: 0xFFCECBBC)
        return header
    }
}
