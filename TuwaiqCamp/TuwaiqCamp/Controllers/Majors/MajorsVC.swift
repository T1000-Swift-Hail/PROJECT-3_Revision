//
//  Mjore.swift
//  TuwaiqCamp
//
//  Created by Huda N S on 26/04/1443 AH.
//

import UIKit

class MajorsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var dataSend = ""
    

    @IBAction func toNext_0(_ sender: UIButton) {
        segmentSelected(0)
    }
    @IBAction func toNext_1(_ sender: UIButton) {
        segmentSelected(1)
    }
    @IBAction func toNext_2(_ sender: UIButton) {
        segmentSelected(2)
    }
    @IBAction func toNext_3(_ sender: UIButton) {
        segmentSelected(3)
    }
    
    //func for Selected
    func segmentSelected(_ selectedButton: Int) {
        if selectedButton == 0 {
            dataSend = "Tuwaiq Software Path .. training camp aimed at qualifying Saudi capabilities to become programmers using the latest programming languages to give them sufficient technical and practical experience to start their careers in web and mobile application development disciplines .."
        } else if selectedButton == 1 {
            dataSend = "Tuwaiq Cyber Security Path .. training camp aimed at qualifying Saudi capabilities and developing their skills in various cybersecurity fields, including vulnerability assessment, penetration testing, incident response, and digital forensic investigation .."
        }else {
            dataSend = "Tuwaiq game development path .. training camp aimed at qualifying Saudi capabilities to become game developers, designers and producers and giving them enough professional and practical experience to start their careers .."
        }
        
        //for go to details
        performSegue(withIdentifier: "toDetiles", sender: nil)
    }
    
    //data transfer
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detail = segue.destination as! ToDetilesVC
        detail.dataSend = dataSend
    }
}
