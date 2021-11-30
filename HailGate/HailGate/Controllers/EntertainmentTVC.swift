//
//  EntertainmentTVC.swift
//  HailGate
//
//  Created by Monafh on 24/04/1443 AH.
//

import UIKit

class EntertainmentTVC: UITableViewController {
    
    @IBOutlet weak var headlineLBL: UILabel!
    @IBOutlet weak var firstImageEntertainment: UIImageView!
    @IBOutlet weak var firstTitleLBL: UILabel!
    @IBOutlet weak var firstTextViewInformation: UITextView!
    //    Second Information
    @IBOutlet weak var secondImageEntertainment: UIImageView!
    @IBOutlet weak var secondTitleLBL: UILabel!
    @IBOutlet weak var secondTextViewInformation: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headlineLBL.text = "Entertainment"
        firstImageEntertainment.image = UIImage(named: "Paragliding")
        firstTitleLBL.text = "Paragliding"
        firstTextViewInformation.text = "A wonderful sport through which you will see a lot of landscapes,Azizia Paragliding Club in Hail, located every weekend next to Hail University، "
        
        secondImageEntertainment.image = UIImage(named: "1")
        secondTitleLBL.text = "Entertainment title 2"
        secondTextViewInformation.text = "Entertainment Information"
        
        tableView.backgroundColor = UIColor(rgb: 0xFFE0ECDE)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300    }
}
