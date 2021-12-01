//
//  TableViewControllerMenu.swift
//  Project3
//
//  Created by طلال عبيدالله دعيع القلادي on 29/11/2021.
//

import UIKit

class TableViewControllerMenu: UITableViewController {
    @IBOutlet var menuTableView: UITableView!
    
    let menu = ["Europe","Africa","Middle East"]
    
    var citys : [[Cities]] = []
    var selectedCity: Cities? = nil
    //var city : [[Cities]] = [[], [], []]
    var titleCitySender = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        citys.append(contentsOf: [
            
        [Cities(name: "Paris", pic: [UIImage(named: "paris1")!,UIImage(named: "paris2")!,UIImage(named: "paris3")!,UIImage(named: "paris4")!]),
        Cities(name: "Rome", pic: [UIImage(named: "rome1")!,UIImage(named: "rome2")!,UIImage(named: "rome3")!,UIImage(named: "rome4")!]),
        Cities(name: "Zurich", pic: [UIImage(named: "zurich1")!,UIImage(named: "zurich2")!,UIImage(named: "zurich3")!,UIImage(named: "zurich4")!])],
                                  
                                  
                                  
        [Cities(name: "Cape town", pic: [UIImage(named: "cape town1")!,UIImage(named: "cape town2")!,UIImage(named: "cape town3")!,
                        UIImage(named: "cape town4")!]),
        Cities(name: "Cairo", pic: [UIImage(named: "cairo1")!,UIImage(named: "cairo2")!,UIImage(named: "cairo3")!,UIImage(named: "cairo4")!]),
        Cities(name: "Marrakech", pic: [UIImage(named: "marrakech1")!,UIImage(named: "marrakech2")!,UIImage(named: "marrakech3")!,UIImage(named: "marrakech4")!])],
                                  
                                  
                                  
                                  
        [Cities(name: "Riyadh", pic: [UIImage(named: "riyadh1")!,UIImage(named: "riyadh2")!,UIImage(named:"riyadh3")!,UIImage(named: "riyadh4")!]),
        Cities(name: "Dubai", pic: [UIImage(named: "dubai1")!,UIImage(named: "dubai2")!,UIImage(named: "dubai3")!,UIImage(named: "dubai4")!]),
        Cities(name: "Doha", pic: [UIImage(named: "doha1")!,UIImage(named: "doha2")!,UIImage(named: "doha3")!,UIImage(named: "doha4")!])]])
        
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return citys.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return menu[section]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return citys[section].count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProfileImage
        
        
        cell.cityName.text = citys[indexPath.section][indexPath.row].name
        cell.cityPic.image = citys[indexPath.section][indexPath.row].pic.first//[0]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCity = citys[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "DetailsPic", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailsPic" {
            let vc = segue.destination as? DetailsCity
            vc?.city = selectedCity
       // }
    }
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
    @IBAction func backTo(_ sender: Any) {
        performSegue(withIdentifier: "back2", sender: nil)
    }
    
}
