//
//  RegisterVC.swift
//  Project-3
//
//  Created by Majed Alshammari on 24/04/1443 AH.
//

import UIKit
import CoreData
class RegisterVC: UIViewController {

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
    
    let userDefault = UserDefaults.standard
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        fetchAllCustomers()
    }
    
    
    func createNewCustomer(name : String, email: String,password: String ,phoneNumber: String, isLogin:Bool,id: UUID){
        
        let context = persistentContainer.viewContext
        
        
        context.performAndWait {
            
            let customer = CustomerData(context: context)
            customer.name = name
            customer.email = email
            customer.password = password
            customer.phoneNumber = phoneNumber
            customer.isLogin = isLogin
            customer.id = id
            do {
                try context.save()
            } catch {
                print(error)
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

    @IBAction func registerButton(_ sender: Any) {
        
        //Check Fields Are not Empty
        guard let name = nameTextField.text, let email = emailTextField.text, let password = passwordTextField.text,let phone = phoneNumberTextField.text, !email.isEmpty, !name.isEmpty, !password.isEmpty,password.count>=8, !phone.isEmpty else { return self.showAlert(title: "All fields must be filled", message: "", handler: nil) }
        
        let uuid = UUID()
        // Save customer information
        if let name = nameTextField.text, let email = emailTextField.text , let phone = phoneNumberTextField.text {
            createNewCustomer(name: name, email: email,password: password, phoneNumber: phone,isLogin: true,id: uuid)
            userDefault.set(true, forKey: "isLogin")
            userUIID = uuid.uuidString
            showAlert(title: "Account Created Successfully", message: "") { action in
                self.nameTextField.text = ""
                self.emailTextField.text = ""
                self.passwordTextField.text = ""
                self.phoneNumberTextField.text = ""
                
                self.dismiss(animated: true) {
                    self.performSegue(withIdentifier: "Home", sender: nil)
                }
            }
            
        
        }
        
    }
    
    
    func showAlert(title:String, message:String,handler: ((UIAlertAction) -> Void)? ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: handler))
        present(alert, animated: true, completion: nil)
    }


}


