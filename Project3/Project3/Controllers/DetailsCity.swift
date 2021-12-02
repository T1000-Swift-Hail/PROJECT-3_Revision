//
//  DetailsCity.swift
//  Project3
//
//  Created by طلال عبيدالله دعيع القلادي on 30/11/2021.
//

import Foundation
import UIKit

class DetailsCity: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var imageDetails: UIImageView!
    
    var setTitleCity = ""
    var city: Cities? = nil

    var images : [UIImage]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        print(city?.pic.count)
        images = city?.pic
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images?.count ?? 0
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell
        cell?.cityImages.image = images?[indexPath.row]
        
        return cell ?? UICollectionViewCell()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (view.frame.width) - 12, height: (view.frame.height) / 3)
        }
    
}
