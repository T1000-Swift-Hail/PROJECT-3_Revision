//
//  NameAllahVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 26/04/1443 AH.
//

import UIKit

class NameAllahVC: UIViewController {
  
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
// var arrImg = [UIImage(named: "1")!,UIImage(named: "2")!]
//
//    var timer : Timer?
//    var currentCellIndex = 0

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//
//        collectionView.delegate = self
//        collectionView.dataSource = self
//
//
//        startTimer()
//
//    }
//    func startTimer(){
//        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
//    }
//
//    @objc func moveToNextIndex(){
//        if currentCellIndex < arrImg.count - 1{
//            currentCellIndex += 1
//        }else{
//            currentCellIndex = 0
//        }
//
//
//    }
//
//    //Specifies the number of items in the list
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return arrImg.count
//    }
//    //It feeds the cell with data
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "callName", for: indexPath) as! NameAllahCollectionViewCell
//
//        cell.imgAllah.image = arrImg[indexPath.row]
//        return cell
//    }
//
//    //Specifies the cell size
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
//    }
//    //Space between cells or a row and the other row
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }

    
    
    
   
    @IBAction func namesOfAllahBtn(_ sender: Any) {
        self.performSegue(withIdentifier: Suges.namesOfAllah.rawValue, sender: nil)
        
    }
    @IBAction func allah(_ sender: Any) {
        let alert = UIAlertController(title: "Al Jabbar", message: "The mighty one is the one whose will is carried out, and no one goes beyond his estimation, and he is the one who is able to create whatever he wills.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func alrhman(_ sender: Any) {
    
    

    let alert = UIAlertController(title: "Al Rahman", message: "The abundance of mercy, which is a name limited to God Almighty, and it is not permissible to say “Al-Rahman” to anyone other than God.  This is because everything is His mercy, and He is the Most Merciful, the Most Merciful.", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Close", style: .default, handler: nil)
    
    alert.addAction(okAction)
    self.present(alert, animated: true, completion: nil)
}
    
}


