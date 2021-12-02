//
//  ViewController.swift
//  ThirdProject
//
//  Created by iAbdullah17 on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var userPass: UITextField!
    
    let userDefoults = UserDefaults.standard
    
    
    let user = Users(user: "iabdullah", password: "1234")
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userPass.isSecureTextEntry = true
      
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        if userDefoults.bool(forKey: "Stay logged in") == true {
           
            performSegue(withIdentifier: "menuScreen", sender: nil)
        }
    }
    
    
    @IBAction func logIn(_ sender: Any) {
        let regist = [user]
        
        guard let userNaame = userName.text else {return}
        guard let userPasss = userPass.text else {return}
        userDefoults.set(true, forKey: "Stay logged in")
        for registed in regist {
            if registed.user == userNaame &&
                registed.password == userPasss {
                performSegue(withIdentifier: "menuScreen", sender: nil)
                return
            } else {
                alerts()
                
            }
        }
        
        
    }
    func alerts() {
        let wrong = UIAlertController(title: "Pass or User is Wrong", message: "", preferredStyle: .alert)
    
        let ok = UIAlertAction(title: "Try Again", style: .default) { action in
        print("Ok")
        
        
    }
        wrong.addAction(ok)
        present(wrong, animated: false)
    
}
    

}

