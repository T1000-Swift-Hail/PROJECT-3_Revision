//
//  LoginViewController.swift
//  project_3
//
//  Created by mona aleid on 26/04/1443 AH.
//

import UIKit

class LoginViewController: UIViewController {



    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    let email = "123456"
    let password = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func onClickLogin(_ sender: Any) {
        if email == txtEmail.text! && password == txtPassword.text! {
            UserDefaults.standard.set(txtEmail.text!, forKey: "email")
            let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            let alert = UIAlertController(title: "Alert".localaized, message: "Email or password is not matching".localaized, preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK".localaized, style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

