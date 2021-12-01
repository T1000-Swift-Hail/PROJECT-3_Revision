//
//  HotelsTVC.swift
//  HailGate
//
//  Created by Monafh on 26/04/1443 AH.
//

import UIKit

class HotelsTVC: UITableViewController {
    
    
    let hotelsInformation = [User(name: " ", numberScoure: 0),User(name: "Millennium Hotel", numberScoure: 5),User(name: "Holiday Villa", numberScoure: 4),User(name: "Golden Tulip", numberScoure: 4),User(name: "Suknai Royal", numberScoure: 3),User(name: "Pinetree Suites", numberScoure: 4),User(name: "Aronani Hotels", numberScoure: 5)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotelsInformation.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HotelsTVCell
        
        let hotelsInformationData = hotelsInformation[indexPath.row]
        
        cell?.hotelsName.text = hotelsInformationData.name
        
        cell?.hotelsRates.text = hotelsInformationData.scoure
        
        return cell ?? UITableViewCell()
        
    }
}

