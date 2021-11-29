//
//  LoginViewController.swift
//  Jenny Project3
//
//  Created by HIND12 on 23/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func usernameUITextField(_ sender: Any) {
    }
    @IBAction func phonenumberUITextField(_ sender: Any) {
    }
    @IBAction func passwordUITextField(_ sender: Any) {
    }
}
let customer = Customer()
  
 // The customer writes the user name and password and enters it on the application
func viewDidLoad() {
       super.viewDidLoad()
       
   }
func Signin(_ sender: UIButton) {
    
}

if (username.text == customer.name) && (password.text == customer.password)&&(phonenumber.text == customer.phonenumbe) {
    
    performSegue(withIdentifier: "home", sender: nil)
    
} else {
    
    let alert = UIAlertController(title: "Error", message: "wrong username or password", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Okay", style: .cancel))
    present(alert, animated: true)
}
}







    
























    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
