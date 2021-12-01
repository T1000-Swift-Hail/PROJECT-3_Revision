//
//  CustomerProfile.swift
//  Project-3
//
//  Created by Majed Alshammari on 25/04/1443 AH.
//

import UIKit
import CoreData
class CustomerProfile: UIViewController {

    let persistentContainer : NSPersistentContainer = {
            let container = NSPersistentContainer(name: "Customer")
        
            container.loadPersistentStores(completionHandler: { storeDescription , error in
                
                if let readError = error {
                    print(readError)
                }
            })
        return container
    }()
    
    var customerData:[CustomerData] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllCustomers()
        tableView.reloadData()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func fetchAllCustomers() {
         
         let context = persistentContainer.viewContext
     
         do {
             customerData = try context.fetch(CustomerData.fetchRequest())
         } catch {
             print(error)
         }
     }

    

}

extension CustomerProfile: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath)
        cell.textLabel?.text = customerData[indexPath.row].name
       
        
        return cell
    }
    
    
    
    
    
    
    
    
}
