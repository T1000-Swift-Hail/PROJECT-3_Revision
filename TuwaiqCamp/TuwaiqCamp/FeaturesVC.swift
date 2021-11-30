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
        
        
        
        cells.append(Cell.init(title: "Qualification for the labor market", image: UIImage(named: "111")!))
        cells.append(Cell.init(title: "world class trainers", image: UIImage(named: "2")!))
        cells.append(Cell.init(title: "Certified certificates", image: UIImage(named: "33")!))
    }
    
    

}


extension FeaturesVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturesCell") as! FeaturesTableViewCell
        let Feature = cells[indexPath.row]
        cell.setup(pohto: Feature.image , Feature: Feature.title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
        
    }
    
}

