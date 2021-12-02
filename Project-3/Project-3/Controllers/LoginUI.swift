//
//  ViewController.swift
//  Project-3
//
//  Created by Majed Alshammari on 23/04/1443 AH.
//

import UIKit
import CoreData
var userUIID = ""
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
        for user in customerData {
            let userIslogin = userDefault.bool(forKey: "isLogin")
            userUIID = userDefault.string(forKey: "userUIID") ?? ""
           
            if (user.id?.uuidString == userUIID) && (userIslogin == true) {
                
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
        
        
        for users in customerData {
        if (email == users.email) && (password == users.password) {
            users.isLogin = true
            userDefault.set(true, forKey: "isLogin")
            // save in userDe = uiid for user
            userUIID = users.id?.uuidString ?? ""
            userDefault.set(true, forKey: "isLogIn")
            userDefault.set(userUIID, forKey: "userUIID")
            performSegue(withIdentifier: "Home", sender: nil)
            emailTextField.text = ""
            passwordTextField.text = ""
            return
        }
            
            
        }
        let alert = UIAlertController(title: "Email or Password is wrong", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}

