//
//  TypesAthkarVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 23/04/1443 AH.
//

import UIKit

class TypesAthkarVC: UIViewController  {

//    var arrAthkar = ["Morning", "Evening", "Remembrance of sleep" , "Remembrance after prayer" ]
    var arrPhoto = [Photo]()
    @IBOutlet weak var tableView: UITableView!
    
    
    var pageImg: UIImage?
    var lblTitle: String?
    var lblContent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        guard let image =  UIImage(named: "Morning") else {return}
        arrPhoto.append(Photo.init(name: "Citation for morning", photo: image))
                        
        guard let image =  UIImage(named: "Evening") else {return}
        arrPhoto.append(Photo.init(name: "Citation for Evening", photo: image))
                        
        guard let image =  UIImage(named: "sleep") else {return}
        arrPhoto.append(Photo.init(name: "Remembrance of sleep", photo: image))
                        
        guard let image =  UIImage(named: "after prayer") else {return}
        arrPhoto.append(Photo.init(name: "Remembrance after prayerr", photo: image))
        
            }
}
    extension TypesAthkarVC : UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrPhoto.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "athkarCell", for: indexPath) as! TypesAthkarTableViewCell
            let data = arrPhoto[indexPath.row]
//            cell.lblAthkar.text = arrPhoto[indexPath.row]
            
            cell.setupCell(photo: data.photo, name: data.name)

            return cell
//
        }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            print(arrPhoto[indexPath.row])
            
            switch indexPath.row {
            case 0:
                pageImg = UIImage(named: "Morning")
                lblTitle = "Morning"
                lblContent = " Oh Allah, I ask, Oh Allah, You are the One The Only, Self-Sufficient Master, Who was not Begotten and Begets not, And none is equal to Him, Forgive me my sins surely You are Forgiving, Merciful"

            case 1:
                pageImg = UIImage(named: "Evening")
                lblTitle = "Evening"
                lblContent = " We have reached the evening and at this very time unto Allah belongs all sovereignty, and all praise is for Allah. None has the right to be worshipped except Allah, Alone without any partner, to Him belongs all sovereignty and praise and He is over all things omnipotent. My Lord, I ask You for the good of this night and the good of what follows it and I seek refuge in You from the evil of this night and the evil of what follows it. My Lord, I seek refuge in You from laziness and senility. My Lord, I seek refuge in You from torment in the Hell Fire and torment in the grave.” Likewise, one says in the morning: “We have reached the morning and at this very time unto Allah belongs all sovereignty."


            case 2:
                pageImg = UIImage(named: "sleep")
                lblTitle = "Remembrance of sleep"
                lblContent = "Oh Allah!, You are my Lord, there is No deity but You. You Created me and I am Your servant and I am trying my best to keep my Oath (of faith) to You and to seek to live in the hope of Your Promise. I seek Refuge in You from my greatest evil deeds. I acknowledge Your Blessings upon me and my sins. So forgive me, for none but You can forgive sins"

            case 3:
                pageImg = UIImage(named: "after prayer")
                lblTitle = "Remembrance after prayer"
                lblContent = "‘None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise and He is over all things omnipotent. There is no might nor power except with Allah, none has the right to be worshipped except Allah and we worship none except Him. For Him is all favour, grace, and glorious praise. None has the right to be worshipped except Allah and we are sincere in faith and devotion to Him although the disbelievers detest it."
            default:
                print(" ")
            }
            
            
            performSegue(withIdentifier: Suges.athkar.rawValue, sender: nil)

    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondVC
        vc.lblTitle = lblTitle
        vc.pageImg = pageImg
        vc.lblContent = lblContent
       
    }
       
}
    

    
