//
//  MenuViewController.swift
//  PROJECT-3-Cafes
//
//  Created by موضي الحربي on 25/04/1443 AH.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var arrMenus = [Menus]()
    var setArrayMunu: [Menus]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let setArrayMunu = setArrayMunu else { return }
        arrMenus = setArrayMunu
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mneucell")as! MenuTableViewCell
        let data = arrMenus[indexPath.row]
        cell.setupCell(photo: data.photo, name: data.name, price: data.price, descripition: data.descripition)
        
        cell.buttonAddFav.tag = indexPath.row
        cell.buttonAddFav.addTarget(self, action: #selector(addToFavorite(sender:)), for:.touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenus.count
    }
    @objc func addToFavorite(sender:UIButton){
        print("button index = \(sender.tag)")
        sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
    
}
struct Menus {
    
    let name : String
    let price : Double
    let descripition: String
    let photo : UIImage
    
}
