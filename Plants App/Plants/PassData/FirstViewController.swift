//
//  FirstViewController.swift
//  Plants
//
//  Created by Asma Rasheed on 29/11/2021.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textfild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func button(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secound") as! SecoundViewController
        vc.userData = User(name: textfild.text!, des: ": Gardens and outdoor plants add a special aesthetic to our homes ، ")
        present(vc, animated: true, completion: nil)
    }

    
    @IBAction func `switch`(_ sender: UISwitch) {
        if (sender as AnyObject).isOn{
            view.backgroundColor = .black
        }else{
            view.backgroundColor = .white
        }
    }
}
