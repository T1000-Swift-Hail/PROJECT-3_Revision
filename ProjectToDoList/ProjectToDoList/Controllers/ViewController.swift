//
//  ViewController.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 22/04/1443 AH.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func newReminder(_ sender: UIButton) {
        performSegue(withIdentifier: "reminderSeque", sender: nil)
    }
    
}

//reminderSeque
