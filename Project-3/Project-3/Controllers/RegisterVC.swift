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
    
   
    
    func createNewCustomer(name : String, email: String,password: String ,phoneNumber: String, isLogin:Bool){
        
        let context = persistentContainer.viewContext
        
        
        context.performAndWait {
            
            let customer = CustomerData(context: context)
            customer.name = name
            customer.email = email
            customer.password = password
            customer.phoneNumber = phoneNumber
            customer.isLogin = isLogin
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
    }
    

    @IBAction func registerButton(_ sender: Any) {
        
        //Check Fields Are not Empty
        guard let name = nameTextField.text, let email = emailTextField.text, let password = passwordTextField.text,let phone = phoneNumberTextField.text, !email.isEmpty, !name.isEmpty, !password.isEmpty,password.count>=8, !phone.isEmpty else { return self.showAlert(title: "All fields must filled", message: "") }
        
        
        //Trying to save customer information
        if let name = nameTextField.text, let email = emailTextField.text , let phone = phoneNumberTextField.text {
            createNewCustomer(name: name, email: email,password: password, phoneNumber: phone,isLogin: true)
            showAlert(title: "Account Created Successfully", message: "You can login now")
            
        
        }
        
        
//         userDefault.set(emailTextField.text, forKey: "email")
//         userDefault.set(passwordTextField.text, forKey: "password")
        
        
        
    }
    
    
    func showAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }


}


