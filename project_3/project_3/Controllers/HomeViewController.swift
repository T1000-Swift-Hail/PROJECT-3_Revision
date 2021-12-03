//
//  HomeViewController.swift
//  project_3
//
//  Created by mona aleid on 26/04/1443 AH.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcom: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()

        }
        
        override func viewWillAppear(_ animated: Bool) {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: self, action: nil)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

        @IBAction func onClickLogout(_ sender: Any) {
            UserDefaults.standard.removeObject(forKey: "email")
           let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController")
            let navVC = UINavigationController(rootViewController: vc!)
            let share = UIApplication.shared.delegate as? AppDelegate
            share?.window?.rootViewController = navVC
            share?.window?.makeKeyAndVisible()
            performSegue(withIdentifier: "toMain", sender: nil)
        }
        

    }

