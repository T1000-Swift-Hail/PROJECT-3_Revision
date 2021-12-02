//
//  PlantsOne.swift
//  Plants
//
//  Created by Asma Rasheed on 30/11/2021.
//

import UIKit

class PlantsOne: UIViewController {

    var arrayplants = [plants]()

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        
        arrayplants.append(plants.init(names: "Pilea plant", des: "Pilea  is an Asiatic perennial herb that is native to Yunnan Province in Southern China ", photo: UIImage(named: "piled")!))
        
        arrayplants.append(plants.init(names: "Monstera plant", des: "Monsteras are famous for their quirky natural leaf holes", photo: UIImage(named: "Monstera")!))
        
        arrayplants.append(plants.init(names: "Snake Plant", des: "is a succulent plant characterized by its upright sword-like leaves", photo: UIImage(named: "Snake Plant")!))
        
        arrayplants.append(plants.init(names: "Aglaonema Wishes", des: "Embrace color with this unique Aglaonema cultivar, Wishes", photo: UIImage(named: "Aglaonema Wishes")!))
        
        arrayplants.append(plants.init(names: "peace Lily", des: "Peace lilies are one of the most common houseplants because they're easy to grow", photo: UIImage(named: "peace lily")!))
        
        arrayplants.append(plants.init(names: "Dracena Gold Star", des: "long, dark green and chartreuse striped leaves atop sturdy canes", photo: UIImage(named: "Dracaena Gold Star")!))
        
    }
    
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    
    @IBAction func `switch`(_ sender: Any) {
    }
    
}




