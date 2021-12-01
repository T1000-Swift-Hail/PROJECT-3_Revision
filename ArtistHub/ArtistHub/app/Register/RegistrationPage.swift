//
//  RegistrationPage.swift
//  ArtistHub
//
//  Created by Anas Hamad on 23/04/1443 AH.
//

import Foundation
import UIKit
import FirebaseAuth
import Firebase
import FirebaseDatabase


class RegistrationPage : UIViewController{
    

    @IBOutlet var textFieldEmail: UITextField!
    @IBOutlet var textFieldUserName: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    @IBOutlet var textFieldRePass: UITextField!
    
    
    
    
    
    
    @IBAction func registerBottun(_ sender: Any) {
        
        
        if textFieldEmail.text?.isEmpty == true || textFieldPassword.text?.isEmpty == true {
            desplayAlert(title: "Wrong ", message: "The Email or passwor is empty")
        }
        
        
        if textFieldPassword.text != textFieldRePass.text {
            
            desplayAlert(title: "Wrong", message: "The password is not mached")
        }else{
    signUpUsers()
    }
    }
    
    func desplayAlert(title:String,message:String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OKAY", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    func signUpUsers(){
        
        Auth.auth().createUser(withEmail: textFieldEmail.text!, password: textFieldRePass.text!) { user, error in
            if let error = error {
                print("errorIs:\(error)")
                self.desplayAlert(title: error.localizedDescription , message: "Error")
            } else {
                self.desplayAlert(title: "Success", message: "You are registerd Now")
            }
        }
        
    }
    
    
  
        
}
     
