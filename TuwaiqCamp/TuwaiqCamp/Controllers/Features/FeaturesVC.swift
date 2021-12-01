//
//  FeaturesVC.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 25/04/1443 AH.
//

import UIKit

class FeaturesVC: UIViewController {
    
    @IBOutlet weak var FeaturesTableView: UITableView!
    
    var cells = [Cell]()
    override func viewDidLoad() {
        super.viewDidLoad()
        FeaturesTableView.dataSource = self
        FeaturesTableView.delegate = self
        
        //array for features
        cells.append(Cell.init(title: "Qualification for the labor market", image: UIImage(named: "Special")!))
        cells.append(Cell.init(title: "world class trainers", image: UIImage(named: "like")!))
        cells.append(Cell.init(title: "Certified certificates", image: UIImage(named: "Accolade")!))
    }
}


extension FeaturesVC : UITableViewDelegate , UITableViewDataSource {
    //function to specify the number of items
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }

    //Insert the cell at a specific location in the Table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturesCell") as! FeaturesTableViewCell
        let Feature = cells[indexPath.row]
        cell.setup(pohto: Feature.image , Feature: Feature.title)
        return cell
    }
    
    //function of determining the width and height of the cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

