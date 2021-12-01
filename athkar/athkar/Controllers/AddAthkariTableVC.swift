//
//  AddAthkariTableVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 25/04/1443 AH.
//

import UIKit

class AddAthkariTableVC: UITableViewController {

  
    var arrAthkari = [""]
    let userDefaluts = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let setAthkari = userDefaluts.object(forKey: "arrAthkari") as?
            [String] {
    
        self.arrAthkari = setAthkari
    }
}
 
  
    @IBAction func addAthkari(_ sender: Any) {
    
    
    
        var textFiled = UITextField()
        let alert = UIAlertController(title: "Add", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok ", style: .default) { action in
       
               guard let text = textFiled.text else {return}
            self.arrAthkari.append(text)
                self.userDefaluts.set(self.arrAthkari, forKey: "arrAthkari")
                self.tableView.reloadData()

            }
            let cuncal = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            alert.addTextField { textFiledSet in
                textFiledSet.placeholder = "Add.."
                textFiled = textFiledSet
            }
            alert.addAction(cuncal)
            alert.addAction(action)

            present(alert, animated: true, completion: nil)

        }
    

   

    @IBAction func editAthkari(_ sender: Any) {
    
    
    
    if tableView.isEditing {
        tableView.isEditing = false
    } else {
        tableView.isEditing = true
    }
    }


    
    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return arrAthkari.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath)
        cell.textLabel?.text = arrAthkari[indexPath.row]
       
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            arrAthkari.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
//            removeValueForKey(willRemoveKey)
//            removeValue(forKey: item.key)
        }
        
        
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
        if sourceIndexPath == destinationIndexPath {
            return
        } else {
            let movedItem = arrAthkari[sourceIndexPath.row]
            arrAthkari.remove(at: sourceIndexPath.row)
            arrAthkari.insert(movedItem, at: destinationIndexPath.row)
            
        }
    }
}
