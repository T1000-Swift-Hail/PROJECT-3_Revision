//
//  MajorsVC.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 26/04/1443 AH.
//

import UIKit

class MajorsVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var MajorsOne: UITableView!
    
    var majors = [Major]()
    override func viewDidLoad() {
        super.viewDidLoad()
        MajorsOne.dataSource = self
        MajorsOne.delegate = self
        
        majors.append(Major.init(title: "Swift", logo: UIImage(named: "majorOne")!))
//        majors.append(Major.init(title: "world class trainers", logo: UIImage(named: "like")!))
//        majors.append(Major.init(title: "Certified certificates", logo: UIImage(named: "Accolade")!))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return majors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "majorsCell") as! MajorsTableViewCell
        let Major2 = majors[indexPath.row]
        cell.setup2(pohto: Major2.logo , Majors: Major2.title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
