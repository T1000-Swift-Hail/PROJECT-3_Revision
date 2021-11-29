//
//  ViewController.swift
//  Project-3
//
//  Created by Majed Alshammari on 23/04/1443 AH.
//

import UIKit

class LoginUI: UIViewController {
    let userDefault = UserDefaults.standard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let isLoggedIn = userDefault.bool(forKey: "isLogIn")
        if isLoggedIn {
            
            performSegue(withIdentifier: "Home", sender: nil)
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        userDefault.set(true, forKey: "isLogIn")
        for users in customers {
            
            if (email == users.email) && (password == users.password) {
                performSegue(withIdentifier: "Home", sender: nil)
                return
            }
        }
        let alert = UIAlertController(title: "Email or Password wrong", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}

