//
//  Customer.swift
//  QuestionAndAnswer
//
//  Created by Mastorah on 29/11/2021.
//

import UIKit

protocol Customers {
    var username : String {get set}
    var emailText : String {get set}
    var password :  Int {get set}
    
    func describeCustomer()
}


class Customer: UIViewController {
   
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        let username = userName.text ?? ""
        let passWord = password.text ?? ""
        
        if username.isEmpty || passWord.isEmpty {
            let myAlert = UIAlertController(title: "Login Invalid", message: "All fields are required !", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok" , style: .default , handler: nil)
            myAlert.addAction(okAction)
            present(myAlert , animated : true , completion : nil)
        }
          else{
            //Display alert message
            let myAlert = UIAlertController(title: "Login is successfully", message:"Welcome", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: { alertt in
              self.performSegue(withIdentifier: "login", sender: nil)
            })
              myAlert.addAction(okAction)
              present(myAlert , animated : true , completion : nil)
          }
        }
    }
    







