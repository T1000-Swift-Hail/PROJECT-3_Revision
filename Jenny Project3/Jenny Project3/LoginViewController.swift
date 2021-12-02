//
//  LoginViewController.swift
//  Jenny Project3
//
//  Created by HIND12 on 23/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTx: UITextField!
    
    @IBOutlet weak var phonenumberTx: UITextField!
    
    @IBOutlet weak var passwordTx: UITextField!
   

    let customer = Customer(name: "Nasser", age: 24, services: [], phoneNumber: 56666, password: "1234567", description: "delivery of the customer to the desired location")

  
 // The customer writes the user name and password and phoneNumberenters it on the application
override func viewDidLoad() {
       super.viewDidLoad()
    
  

       
   }



    @IBAction func logIn(_ sender: Any) {
        
        if (userNameTx.text == customer.name) && (passwordTx.text == customer.password) && (phonenumberTx.text == String(customer.phoneNumber)) {
             
             performSegue(withIdentifier: "home", sender: nil)
             
         } else {
             
             let alert = UIAlertController(title: "Error", message: "wrong username or password", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title: "Okay", style: .cancel))
             present(alert, animated: true)
         }
    }
    

}

//class Customer {
//var  = 0 {
//willSet {
      //  print("About to have \(newValue) kids!  Make plans!")
   // }
//didSet {
      //  print("You used to have \(oldValue) kids.  Now you have \(kidCount).")
  //  }
//} }





    
























    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
