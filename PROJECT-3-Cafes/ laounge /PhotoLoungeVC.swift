//
//  PhotoLoungeVC.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 26/04/1443 AH.
//

import UIKit

class PhotoLoungeVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collictionView: UICollectionView!
    
    var arrPhotos = [Photos]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrPhotos.append(Photos(name: "VALOR LOUNGE", photo: [UIImage(named: "Loung  Valor1")!,UIImage(named: "Loung  Valor2")!,UIImage(named: "Loung  Valor3")!]))
        
        
        arrPhotos.append(Photos(name: "LOUNGE AYLUL_6", photo: [UIImage(named: "Loung 6Aylol 1")!,UIImage(named: "Loung 6Aylol 2")!,UIImage(named: "Loung 6Aylol 3")!]))
        
        arrPhotos.append(Photos(name: "CARMELO LOUNGE", photo: [UIImage(named: "carmello 1")!,UIImage(named: "carmello 2")!,UIImage(named: "carmello 3")!]))
        
        
        collictionView.delegate = self
        collictionView.dataSource = self
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arrPhotos.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPhotos[section].photo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photocell", for: indexPath) as!PhotosCollectionViewCell
        cell.imgLoung.image = arrPhotos[indexPath.section].photo[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collictionView.frame.width * 0.5 , height: collictionView.frame.width * 0.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "photosHeader", for: indexPath) as!
        PhotosCollectionReusableView
        
        header.lblHeaderTitle.text = arrPhotos[indexPath.section].name
        // header.backgroundColor =
        
        return header
    }
}
struct Photos {
    let name : String
    let photo : [UIImage]
}
