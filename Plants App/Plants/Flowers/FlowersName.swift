//
//  FlowersName.swift
//  Plants
//
//  Created by Asma Rasheed on 30/11/2021.
//

import UIKit

class FlowersName: UITableViewController {
    
    
    // Dic
    var plants = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        plants.append(["FlowersPlants":"Lily Flower"])
        plants.append(["FlowersPlants":"amber flower"])
        plants.append(["FlowersPlants":"Narcissus flower"])
        plants.append(["FlowersPlants":"jasmine flower"])
        plants.append(["FlowersPlants":"Zinnia elegan"])
        plants.append(["FlowersPlants":"tulip flower"])
        plants.append(["FlowersPlants":"Iris flower"])
        
      
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return plants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlowersPlants")
        
        cell?.textLabel?.text = plants[indexPath.row]["FlowersPlants"] as? String
        
        return cell!
    }
   
    }
    

