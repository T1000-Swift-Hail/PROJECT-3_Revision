//
//  Extintion.swift
//  Plants
//
//  Created by Asma Rasheed on 29/11/2021
//

import Foundation
import UIKit

extension PlantsOne: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayplants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "PlantsCell", for: indexPath) as! PlantsCell
        let data = arrayplants[indexPath.row]
        cell.frotcell(photo: data.photo, names: data.names, des: data.des)
        return cell
    }


}
