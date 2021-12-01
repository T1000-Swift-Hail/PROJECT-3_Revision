//
//  RegistrationVC.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 24/04/1443 AH.
//

import UIKit
import MBProgressHUD

class RegistrationVC: BaseVC {
    
    @IBOutlet weak var userNameTf: UITextField!
    @IBOutlet weak var regEmailTf: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var passwordConfirmTf: UITextField!
    @IBOutlet weak var buttonRegister: UIButton!
    @IBOutlet weak var buttonAlreadyHaveAnAccount: UIButton!
    
    var usersArray: [User]? = []
    let users = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonRegister.setTitle("Register", for: .normal)
        buttonAlreadyHaveAnAccount.setTitle("Already have an account?", for: .normal)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSignUp(_ sender: Any) {
        
        if !isValidCheck() {
            return
        }
        showLoadingView(vc: self)
        let name = userNameTf.text ?? ""
        let email = regEmailTf.text ?? ""
        let password = passwordTf.text ?? ""
        let country = country.text ?? ""

        DBManager.shared.createUser(with: .init(username: name, email: email, password: password, country: country, canRate: true)) {
            self.hideLoadingView()
            userType = .authenticated
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyBoard.instantiateViewController(identifier: "TabBarViewController")
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
    }
    
    @IBAction func didTapHaveAccount(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func isValidCheck() -> Bool {
        if userNameTf.text!.isEmpty {
            showAlert("Please input user name.")
            return false
        } else if regEmailTf.text!.isEmpty {
            showAlert("Please input your email.")
            return false
        } else if !isValidEmail(email: regEmailTf.text!) {
            showAlert("Please input valid email.")
            return false
        } else if passwordTf.text!.isEmpty {
            showAlert("Please input password.")
            return false
        } else if passwordConfirmTf.text != passwordTf.text {
            showAlert("Please confirm password.")
            return false
        }
        return true
    }
    
    override func showAlert(_ message: String!) {
        showAlertDialog(title: "Alert", message: message, positive: "OK", negative: nil)
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        doDismiss(true)
    }
}
