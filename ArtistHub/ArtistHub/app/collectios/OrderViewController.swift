//
//  OrderViewController.swift
//  ArtistHub
//
//  Created by Anas Hamad on 26/04/1443 AH.
//

import UIKit

class OrderViewController: UIViewController {


    @IBOutlet var tableView: UITableView!
    
    
    var imageselected : UIImage?
    var nameLabela : String?
    var priceLabela : String?
    var categoryLabela : String?
    
    override func viewDidLoad() {
        
        tableView.reloadData()
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    @IBAction func doneBottun(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
