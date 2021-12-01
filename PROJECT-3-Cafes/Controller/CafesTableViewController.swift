//
//  CafesTableViewController.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 23/04/1443 AH.
//

import UIKit
import MapKit

class CafesTableViewController: UITableViewController {
    
    var selectedCafe: [Menus]? = nil
    
    
    var firstCafeMenue: [Menus]? = nil
    var secondCafeMenue: [Menus]? = nil
    var thirdCafeMenue: [Menus]? = nil
    var cafes : [Cafe]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCafeMenue = firstCafe()
        secondCafeMenue = secondCafe()
        thirdCafeMenue = thirdCafe()
        
        guard let firstCafeMenue = firstCafeMenue else { return }
        guard let secondCafeMenue = secondCafeMenue else { return }
        guard let thirdCafeMenue = thirdCafeMenue else {
            return
        }

        
        cafes = [
            Cafe(name: "Old Cafe", location: "Jaddah, Al Muntazah Al Gharbi, Hail 55427", information: "Dine-in Takeaway No-contact delivery",
                 numberPhone: 0547676235,imageCafe:UIImage(named:"old cafe")!, menue: firstCafeMenue),
            
            Cafe(name:"December Coffee",location: " Jaddah, Al Muntazah Al Gharbi, Hail 55427",information: "Dine-in Takeaway No-contact delivery",
                 numberPhone:0502377052,imageCafe:UIImage(named:  "DecCafe")!, menue: secondCafeMenue),
        
            Cafe(name: "YUMMY", location: "Al wsita, Hail 55432", information: "Dine-in Takeaway No-contact delivery", numberPhone: 0502377052, imageCafe: UIImage(named: "yummy")!, menue: thirdCafeMenue)
            
            //Cafe(name: "NAI Cafe", location: " An Nuqrah, Hail", information: "Dine-in · Takeaway · No-contact delivery", numberPhone: 0547676235, imageCafe: UIImage(named: "naiCafe"), menue: <#T##[Menus]#>)
        
        
            //Cafe(name: <#T##String#>, location: <#T##String#>, information: <#T##String#>, numberPhone: 0548976230, imageCafe: <#T##UIImage#>, menue: <#T##[Menus]#>)
        
        
        
        
        ]
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cafes?.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCafesTableViewCell") as! ListCafesTableViewCell
        
        cell.lableList.text = cafes?[indexPath.row].name
        cell.imageList.image = cafes?[indexPath.row].imageCafe
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCafe = cafes?[indexPath.row].menue
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    override func prepare(for segue:UIStoryboardSegue,sender: Any?){
        let vc = segue.destination as? MenuViewController
        guard let selectedCafe = selectedCafe else { return }
        vc?.setArrayMunu = selectedCafe
    }
    
    func firstCafe() -> [Menus] {
        return [
            Menus.init(name: "Cappuccino", price: 16, descripition: "320 calories", photo: UIImage(named: "capicon")!),
            Menus.init(name: "latte", price: 18, descripition: "400 calories", photo: UIImage(named: "latIcon")!)
            ,
            Menus.init(name: "turkish coffee", price: 12, descripition: "100 calories", photo: UIImage(named: "turkiIcon")!)
            ,
            Menus.init(name: "Spanish Latte", price: 21, descripition: "420 calories", photo: UIImage(named: "SpanichIcon")!)
            ,
            Menus.init(name: "Tea", price: 16, descripition: "200 calories", photo: UIImage(named: "teaIcon")!)
            ,
            Menus.init(name: "Cortado", price: 18, descripition: "80 calories", photo: UIImage(named: "cortadoIcon")!)
        ]
    }
    
    
    fileprivate func secondCafe() -> [Menus] {
        return [
            Menus.init(name: "Cappuccino", price: 18, descripition: "100 calories ", photo: UIImage(named: "capDec")!),
            
            Menus.init(name: "latte", price: 20, descripition: "200 calories", photo: UIImage(named: "lateeDec")!),
            
            Menus.init(name: "Arabic coffe", price: 30, descripition: "90 calories", photo: UIImage(named: "arabicDic")!),
            
            Menus.init(name: "flatDic", price: 22, descripition: "220 calories", photo: UIImage(named: "flatDic")!),
            
            Menus.init(name: "cookies", price: 11, descripition: "180", photo: UIImage(named: "cookies")!),
            
            Menus.init(name: "teaGreen", price: 9, descripition: "40 calories", photo: UIImage(named: "teaGreen")!)
        ]
        
    }
    
    
    func thirdCafe () -> [Menus] {
        return [
            Menus.init(name: "Cappuccino", price: 16, descripition: "320 calories", photo: UIImage(named: "capicon")!),
            Menus.init(name: "latte", price: 18, descripition: "400 calories", photo: UIImage(named: "latIcon")!)
            ,
            Menus.init(name: "turkish coffee", price: 12, descripition: "100 calories", photo: UIImage(named: "turkiIcon")!)
            ,
            Menus.init(name: "Spanish Latte", price: 21, descripition: "420 calories", photo: UIImage(named: "SpanichIcon")!)
            ,
            Menus.init(name: "Tea", price: 16, descripition: "200 calories", photo: UIImage(named: "teaIcon")!)
            ,
            Menus.init(name: "Cortado", price: 18, descripition: "80 calories", photo: UIImage(named: "cortadoIcon")!)
        ]
    }
    
    
    
    
    
    
    
}


