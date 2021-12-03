//
//  ViewController.swift
//  project_3
//
//  Created by mona aleid on 24/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension String {
    var localaized: String {
        return NSLocalizedString(self, comment: "")
    }
}
