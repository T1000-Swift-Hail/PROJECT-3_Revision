//
//  ViewController.swift
//  Project-3
//
//  Created by Majed Alshammari on 23/04/1443 AH.
//

import UIKit
import CoreData
class LoginUI: UIViewController {
    
    let persistentContainer : NSPersistentContainer = {
            let container = NSPersistentContainer(name: "Customer")
        
            container.loadPersistentStores(completionHandler: { storeDescription , error in
                
                if let readError = error {
                    print(readError)
                }
            })
        
        return container
    }()
    var get = ""
    let userDefault = UserDefaults.standard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var customerData:[CustomerData] = []
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchAllCustomers()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        for customers in customerData {
            if customers.isLogin == true {
                performSegue(withIdentifier: "Home", sender: nil)
                
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
    
    @IBAction func loginButton(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
//        userDefault.set(true, forKey: "isLogIn")
        for users in customerData {
        if (email == users.email) && (password == users.password) {
            performSegue(withIdentifier: "Home", sender: nil)
            return
        }
            
            
//            if email == userDefault.string(forKey: "email") && password == userDefault.string(forKey: "password") {
//                performSegue(withIdentifier: "Home", sender: nil)
//            }
            
            
        }
        let alert = UIAlertController(title: "Email or Password is wrong", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}

