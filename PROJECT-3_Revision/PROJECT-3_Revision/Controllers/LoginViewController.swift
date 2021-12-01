//
//  LoginViewController.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 23/04/1443 AH.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var passwoed: UITextField!
    
   
    
    let user = Users(email: "Mem", passward: 123)
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
   
    @IBAction func login(_ sender: Any) {
        
        
        
        let inputPassword = Int(passwoed.text ?? "0") ?? 0
        
        if (email.text == user.email) &&
        (inputPassword == user.passward) {
            
            performSegue(withIdentifier: "Home", sender: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Error", message: "", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            
            present(alert, animated: true)
            
        }
        
    }
    
       
}
