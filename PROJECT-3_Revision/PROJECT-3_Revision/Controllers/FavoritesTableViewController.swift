//
//  FavoritesTableViewController.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 26/04/1443 AH.
//

import UIKit
import CoreData

class FavoritesTableViewController: UITableViewController {

    
    let persistentContainer : NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "SaveList")
        container.loadPersistentStores(completionHandler: {
            desc , error in
            
            if let error = error {
                print(error)
            }
        })
        return container
    }()
    
    var favoritePlants : [CDTree] = []
    
    func fetchAllPlants() {
        
        let context = persistentContainer.viewContext
        
        
        do {
            favoritePlants = try context.fetch(CDTree.fetchRequest())
        } catch {
            print(error)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchAllPlants()
        tableView.reloadData()
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return favoritePlants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = favoritePlants[indexPath.row].label
        cell.imageView?.image = UIImage(named: favoritePlants[indexPath.row].image ?? "")

        return cell
    }

}
