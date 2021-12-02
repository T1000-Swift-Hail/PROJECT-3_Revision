//
//  CustomerProfile.swift
//  Project-3
//
//  Created by Majed Alshammari on 25/04/1443 AH.
//

import UIKit
import CoreData
class CustomerProfile: UIViewController {
    let userDeafault = UserDefaults.standard
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchAllCustomers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        for customersInfo in customerData {
            fetchAllCustomers()
            if customersInfo.id?.uuidString == userUIID {
                
                label1.text = customersInfo.name
                label2.text = customersInfo.email
                label3.text = customersInfo.phoneNumber
            }
        }
    }
    
    func fetchAllCustomers() {
        
        let context = persistentContainer.viewContext
        
        do {
            customerData = try context.fetch(CustomerData.fetchRequest())
        } catch {
            print(error)
        }
        
    }
    @IBAction func logOutButton(_ sender: UIButton) {
        for customerDatum in customerData {
            // if
            if userUIID == customerDatum.id?.uuidString {
                
                customerDatum.isLogin = false
                userDeafault.set(false, forKey: "isLogin")
                 
                let context = persistentContainer.viewContext
                
                do {
                    try context.save()
                    print("TEST:\(customerDatum.isLogin)")
                    dismiss(animated: false, completion: {
                        self.performSegue(withIdentifier: "logOut", sender: nil)
                    })
                } catch {
                    print(error)
                }
            }
        }
        
        
        
        
        
    }
    
}

