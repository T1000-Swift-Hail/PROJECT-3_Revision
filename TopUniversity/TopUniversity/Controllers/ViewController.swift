//
//  ViewController.swift
//  TopUniversity
//
//  Created by Hesah Alqhtani on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
//drud drop for items
    @IBOutlet weak var FIrstImage: UIImageView!
    
    @IBOutlet weak var FirstLabl: UILabel!
    
    @IBOutlet weak var TextFieldName: UITextField!
    
    @IBOutlet weak var TextFieldPass: UITextField!
    
    @IBOutlet weak var TextFieldNewName: UITextField!
    
    @IBOutlet weak var TextFieldNewPass: UITextField!
    
    @IBOutlet weak var TxFieldRPASS: UITextField!
    
    @IBAction func SignIn(_ sender: Any) {
        let userName = TextFieldName.text ?? ""
        let passWord = TextFieldPass.text ?? ""
//        Use if ststment to login and signup 
        if userName.isEmpty || passWord.isEmpty {
            let myAlert = UIAlertController(title:NSLocalizedString("Login Invalid".loclaized, comment: ""), message:NSLocalizedString("All fields are required!".loclaized, comment: ""), preferredStyle: .alert)
            let okAction = UIAlertAction(title: NSLocalizedString("ok".loclaized, comment: ""), style: .default, handler: nil)
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
    }
        else{
            //Display alert message
            let myAlert = UIAlertController(title: "Login is successfully".loclaized, message:"Welcome".loclaized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok".loclaized, style: .default, handler: { alertt in
                self.performSegue(withIdentifier: "loginIdentifier", sender: nil)
                
            })
                   
               myAlert.addAction(okAction)
               present(myAlert , animated : true , completion : nil)
               
        }
    }
       
            
       

   

    

    
    @IBAction func BottenCreateUser(_ sender: UIButton){
    performSegue(withIdentifier: "createNewAcount", sender: nil)
    }
    
    
    
    @IBAction func CreateBotten(_ sender: Any) {
        
       
        let userPassword = TextFieldNewPass.text ?? ""
        let repeatUserPassword = TxFieldRPASS.text ?? ""
        //Check for empty fields
        //Display alert message
      if userPassword.isEmpty || repeatUserPassword.isEmpty {
          let myAlert = UIAlertController(title: "Invalid Sign-Up".loclaized, message:"All fields are required!".loclaized, preferredStyle: .alert)
          let okAction = UIAlertAction(title: "ok".loclaized, style: .default, handler: nil)
                
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
            
        }
        // Check if passwords match
        //Display alert message
        else if (userPassword != repeatUserPassword){
            let alert = UIAlertController(title: "Invalid Sign-Up".loclaized, message:"Passwords do not match!".loclaized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
        }
        
        else {
            //Display alert message
            let alert = UIAlertController(title: "Sign-Up is successfully".loclaized, message:"Welcome".loclaized, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok".loclaized, style: .default, handler: { al in
                self.performSegue(withIdentifier: "signUpIdentifier", sender: nil)
                
            })
            alert.addAction(okAction)
            self.present(alert , animated : true , completion : nil)
                       
            }
        
        }
    }
    
    
    




