//
//  DataViewController.swift
//  TopUniversity
//
//  Created by Hesah Alqhtani on 30/11/2021.
//

import UIKit

class DataViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
//  Use array
    var arrImage = [BingImages]()
    
    
    @IBOutlet weak var dataTableView: UITableView!
    
    var lblTitleGroup : String?
    var uniImageGroup : UIImage?
    var desLabelGroup : String?

       override func viewDidLoad() {
           super.viewDidLoad()
           dataTableView.delegate = self
           dataTableView.dataSource = self
//          Use guard to difine image and nme
           guard let image =  UIImage(named: "university1".loclaized) else {return}
           arrImage.append(BingImages.init(name: "King Abdulaziz University".loclaized, image: image))
           guard let image =  UIImage(named: "university2".loclaized) else {return}
           arrImage.append(BingImages.init(name: "King Fahd University".loclaized, image: image))
           
           guard let image =  UIImage(named: "university3".loclaized) else {return}
           arrImage.append(BingImages.init(name: "King Saud University".loclaized, image: image))
                    
               }
       
         

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoryTableViewCell
        let data = arrImage[indexPath.row]
        cell.setupCell(photo: data.image, name: data.name)
       return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrImage[indexPath.row])
//    Use switch
        switch indexPath.row {
        case 0:
            uniImageGroup = UIImage(named: "university1".loclaized)
            lblTitleGroup = "King Abdulaziz University".loclaized
            desLabelGroup = "King Abdulaziz University has made progress in the (US News) ranking list of world universities for the year 2021, by achieving rank (42) globally and first in the Arab world.".loclaized
       case 1 :
            uniImageGroup = UIImage(named: "university2".loclaized)
            lblTitleGroup = "King Fahd University of Petroleum and Minerals ".loclaized
            desLabelGroup = "King Fahd University topped Arab universities in invention readings and ranked fourth in the international rankings of US patents.".loclaized
        case 2 :
            uniImageGroup = UIImage(named: "university3".loclaized)
             lblTitleGroup = "King Saud University"
            desLabelGroup = "A public university established in 1957, it is the second university established in Saudi Arabia after Umm Al-Qura University by order of King Abdulaziz.".loclaized
           
        default :
            print("")
            
        }
//        this is perform To pass to the next interface
    performSegue(withIdentifier: "passData", sender: nil)
        
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondVC
        vc.uniImageGroup = uniImageGroup
        vc.lblTitleGroup = lblTitleGroup
        vc.desLabelGroup = desLabelGroup
    }
    
}
    
    

