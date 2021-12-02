//
//  ViewController.swift
//  Plants
//
//  Created by Asma Rasheed on 29/11/2021.
//

import UIKit
import AVFoundation
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var imgAreey = [UIImage(re:.image1), UIImage(re: .image2), UIImage(re: .image6), UIImage(re: .image4) , UIImage(re: .image5)]
    
    
    var timer = Timer()
    var counter = 0
    var str = "welcome to plants app"

    @IBOutlet weak var textLa: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ges = UITapGestureRecognizer(target: self, action: #selector (getsData))
        self.view.addGestureRecognizer(ges)
       

        collectionView.delegate = self
        collectionView.dataSource = self
        DispatchQueue.main.async {
              self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
           }
    }
    
    // for loop
    @objc func getsData(){
        for i in str{
            AudioServicesPlayAlertSound(1306)
            textLa.text! += "\(i)"
            RunLoop.current.run(until: Date()+0.12)
            
        }
    }
    
    
    // collection for cell to timer
    
    @objc func changeImage() {
         
        // conditional
         if counter < imgAreey.count {
              let index = IndexPath.init(item: counter, section: 0)
              self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
             counter += 1
         } else {
              counter = 0
              let index = IndexPath.init(item: counter, section: 0)
              self.collectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
               counter = 1
           }
      }
    // funcation
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgAreey.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.image.image = imgAreey[indexPath.row]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
   // switch
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "indoor plants", sender: nil)
        case 1 :
            performSegue(withIdentifier: "outdoor plants", sender: nil)
        default:
            print("")
        }
    }
    // clousure
    @IBAction func flowerBtn(_ sender: Any) {
        let alert = UIAlertController(title: "Flowers", message: "Outdoor plants", preferredStyle: .alert)
                   let okAction = UIAlertAction(title: "ok" , style: .default, handler: { aa in
                    self.performSegue(withIdentifier: "FlowersPlants", sender: nil)
                   })
                   alert.addAction(okAction)
                   self.present(alert , animated : true , completion : nil)
        }
    
    }


