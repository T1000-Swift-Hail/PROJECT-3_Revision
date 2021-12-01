//
//  Customer.swift
//  QuestionAndAnswer
//
//  Created by Mastorah on 29/11/2021.
//

import UIKit

protocol Customers {
    var userName : String {get set}
    var emailText : String {get set}
    var password :  Int {get set}
    
    func describeCustomer()
}

var theUserName = {
    print("userName")
}


class Customer: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func loginButton(_ sender: UIButton) {
       

    
    }
    
}






