//
//  ToDoListTVC.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 23/04/1443 AH.
//

import UIKit

class ToDoListTVC: ViewController , UITableViewDelegate , UITableViewDataSource {

    
    
    
    var toDoList = ["To Do","Shopping","Work"]
    

    @IBOutlet weak var ToDoTableView: UITableView!
    
    let userDefaluts = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ToDoTableView.delegate = self
        ToDoTableView.dataSource = self
        if let setItems = userDefaluts.object(forKey: "toDoList") as? [String] {
            self.toDoList = setItems
        }
    }
    
    @IBAction func editng(_ sender: UIBarButtonItem) {
        if ToDoTableView.isEditing {
            ToDoTableView.isEditing = false
        } else {
            ToDoTableView.isEditing = true
        }
    }
    
    @IBAction func addListBtn(_ sender: Any) {
        
    }
    
    
    
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoList.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell") as! ToDoCell
         cell.toDoLabel?.text = toDoList[indexPath.row]
        // Configure the cell...
        
        return cell
    }
     func tableView(_ tableView: UITableView,commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            toDoList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            
        }
        
        
    }
     func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath,to destinationIndexPath: IndexPath) {
        if sourceIndexPath == destinationIndexPath {
            return
        } else {
            let movedItem = toDoList[sourceIndexPath.row]
            toDoList.remove(at: sourceIndexPath.row)
            toDoList.insert(movedItem, at: destinationIndexPath.row)
            
        }
    }

}
