//
//  NavNC.swift
//  Project-3
//
//  Created by Majed Alshammari on 26/04/1443 AH.
//

import UIKit

class NavNC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.popViewController(animated: true)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.popViewController(animated: true)
    }

}
