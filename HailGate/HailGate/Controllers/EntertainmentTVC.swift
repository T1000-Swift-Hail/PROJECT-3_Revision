//
//  EntertainmentTVC.swift
//  HailGate
//
//  Created by Monafh on 24/04/1443 AH.
//

import UIKit

class EntertainmentTVC: UITableViewController {
    
    //     Hesdline For Section ....
    @IBOutlet weak var headlineLBL: UILabel!
    
    //     Information For First Enterainment ...
    @IBOutlet weak var firstImageEntertainment: UIImageView!
    @IBOutlet weak var firstTitleLBL: UILabel!
    @IBOutlet weak var firstTextViewInformation: UITextView!
    
    //     Information For Second Enteraiment ....
    @IBOutlet weak var secondImageEntertainment: UIImageView!
    @IBOutlet weak var secondTitleLBL: UILabel!
    @IBOutlet weak var secondTextViewInformation: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        First ...
        headlineLBL.text = "Entertainment"
        firstImageEntertainment.image = UIImage(named: "Paragliding")
        firstTitleLBL.text = "Paragliding"
        firstTextViewInformation.text = "A wonderful sport through which you will see a lot of landscapes,Azizia Paragliding Club in Hail, located every weekend next to Hail University، "
        //        Secand ....
        secondImageEntertainment.image = UIImage(named: "HailRally")
        secondTitleLBL.text = "HAIL RALLY"
        secondTextViewInformation.text = "The 2021 Hail Rally will be organized and organized in cooperation between the Saudi Automobile and Motorcycle Federation, the Hail Region Development Authority and the Ministry of Sports. It poses a challenge for drivers and their vehicles alike."
        
        tableView.backgroundColor = UIColor(rgb: 0xFFE0ECDE)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.backgroundColor = UIColor(rgb: 0xFFE0ECDE)
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350    }
}
