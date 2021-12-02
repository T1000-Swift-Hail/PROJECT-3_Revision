//
//  OrderVC.swift
//  ThirdProject
//
//  Created by iAbdullah17 on 24/04/1443 AH.
//

import UIKit


enum Meals : String {
    case BigMac
    case McChicken
    case GrandDeluxe
    case GrandSpecial
    case McArabia
    case GrandSpice
    case McChickenSpice
    
}

class OrderVC: UIViewController {
    
    
    var orderrImage : UIImage?
    
    
    let meals = [UIImage(named: Meals.BigMac.rawValue), UIImage(named: Meals.McChicken.rawValue), UIImage(named: Meals.GrandDeluxe.rawValue), UIImage(named: Meals.GrandSpecial.rawValue), UIImage(named: Meals.McArabia.rawValue), UIImage(named: Meals.GrandSpice.rawValue), UIImage(named: Meals.McChickenSpice.rawValue)]

    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    let userDefoult = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CollectionView.delegate = self
        CollectionView.dataSource = self

    }
    
  
    
    
    
    
    
    
    
    @IBAction func logOut(_ sender: Any) {
        userDefoult.set(false, forKey: "Stay logged in")
    
        performSegue(withIdentifier: "LogOut", sender: nil)
        
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LogOut" {
            
        } else {
            
            let vc = segue.destination as! CinfirmationVC
            vc.nextImage = orderrImage
        }
    }


}

extension OrderVC : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return meals.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        orderrImage = meals[indexPath.row]
        performSegue(withIdentifier: "toBill", sender: nil)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}

        cell.McMenu.image = meals[indexPath.row]

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width / 2 , height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}

