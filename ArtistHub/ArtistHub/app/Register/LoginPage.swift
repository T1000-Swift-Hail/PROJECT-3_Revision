//
//  LoginPage.swift
//  ArtistHub
//
//  Created by Anas Hamad on 23/04/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase


class LoginPage : UIViewController{
    
    @IBOutlet var usernameOrEmail: UITextField!
    
    @IBOutlet var passWordtextField: UITextField!
    
    
    @IBOutlet var RegisterBottun: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func showBottun(_ sender: Any) {
        
        performSegue(withIdentifier: "ShowHome", sender: nil)
    }
    @IBAction func registerBotun(_ sender: Any) {
        
        performSegue(withIdentifier: "Regster", sender: nil)
    }
    
    
    
    
    
    @IBAction func signInBottun(_ sender: Any) {
        
        if usernameOrEmail.text?.isEmpty == true || passWordtextField.text?.isEmpty == true {
            desplayAlert(title: "Wrong", message: "Email or password is empty !")
        }else {
            Auth.auth().signIn(withEmail: usernameOrEmail.text!, password: passWordtextField.text!) {authresult,error in
                
                if let error = error {
                    self.desplayAlert(title: error.localizedDescription, message: "Error")
                    print(error.localizedDescription)
                }else{
                    
                    self.performSegue(withIdentifier: "homePage", sender: nil)
                }
                
                
            }
            
        }
        
        
        
    }
    
    
    func desplayAlert(title:String,message:String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OKAY", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
}
