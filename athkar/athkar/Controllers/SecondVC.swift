//
//  SecondVC.swift
//  athkar
//
//  Created by AryafAlaqabali on 23/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var lblPageTitle: UILabel!
    @IBOutlet weak var pageTitleImg: UIImageView!
    @IBOutlet weak var lblPageContent: UILabel!
    
    
    var pageImg: UIImage?
    var lblTitle: String?
    var lblContent: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageTitleImg.image = pageImg
        lblPageTitle.text = lblTitle
        lblPageContent.text = lblContent
        
        print("dessort .......")
        print(lblContent ?? "")
        
        
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
