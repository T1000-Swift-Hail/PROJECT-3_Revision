//
//  ProfileViewController.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

class ProfileViewController: BaseVC {

    @IBOutlet weak var textFieldUserName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldCountry: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var texxtFieldConfirmPassword: UITextField!
    @IBOutlet weak var viewForm: UIView!
    @IBOutlet weak var labelUpdate: UILabel!
    
    var currentUser = globalUser
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentUser = globalUser
        
        if userType == .authenticated {
            labelUpdate.isHidden = false
            viewForm.isHidden = false
            textFieldUserName.text = currentUser.username
            textFieldEmail.text = currentUser.email
            textFieldCountry.text = currentUser.country
            textFieldPassword.text = currentUser.password
            texxtFieldConfirmPassword.text = currentUser.password
        } else {
            labelUpdate.isHidden = true
            viewForm.isHidden = true
            
            showAlert("Please login to see your profile")
        }
        
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonSubmitAction(_ sender: UIButton) {
        if !isValidCheck() {
            return
        }
        
        if userType == .guest {
            showAlert("Please Login to update profile")
        }
        
        showLoadingView(vc: self)
        let name = textFieldUserName.text ?? ""
        let email = textFieldEmail.text ?? ""
        let password = textFieldPassword.text ?? ""
        let country = textFieldCountry.text ?? ""
        
        currentUser.username = name
        currentUser.email = email
        currentUser.password = password
        currentUser.country = country
        
        DBManager.shared.updateUser(user: currentUser) {
            self.hideLoadingView()
        }
    }
    
    func isValidCheck() -> Bool {
        if textFieldUserName.text!.isEmpty {
            showAlert("Please input user name.")
            return false
        } else if textFieldEmail.text!.isEmpty {
            showAlert("Please input your email.")
            return false
        } else if !isValidEmail(email: textFieldEmail.text!) {
            showAlert("Please input valid email.")
            return false
        } else if textFieldPassword.text!.isEmpty {
            showAlert("Please input password.")
            return false
        } else if texxtFieldConfirmPassword.text != textFieldPassword.text {
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
    
}
