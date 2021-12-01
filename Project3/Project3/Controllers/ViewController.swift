//
//  ViewController.swift
//  Project3
//
//  Created by طلال عبيدالله دعيع القلادي on 28/11/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var useName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var titleName: UILabel!
    
    var Name1 = User(firstName: "Ali", password: "1")
    var Name2 = User(firstName: "Saad", password: "2")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func logIn(_ sender: Any) {
        let NewNames = [Name1 , Name2 ]
        guard let AcountUser = useName.text else {return}
        guard let AcountPassword = userPassword.text else {return}
        for RegisterdUser in NewNames {
            if RegisterdUser.firstName == AcountUser &&
                RegisterdUser.password == AcountPassword {
                performSegue(withIdentifier: "second", sender: nil)
                return
    }
            else {
                Message()
            }
}
    }
    
    func Message() {
        let message1 = UIAlertController(title: "Your Username And Password not corect", message: "", preferredStyle: .alert)
        let done = UIAlertAction(title: "try Again", style: .default) { action in
            
            print("OK")
        }
        message1.addAction(done)
        present(message1, animated: true)
    }
    }

