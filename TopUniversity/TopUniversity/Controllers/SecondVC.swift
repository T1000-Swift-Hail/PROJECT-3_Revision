//
//  SecondVC.swift
//  TopUniversity
//
//  Created by Hesah Alqhtani on 30/11/2021.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var uniImage: UIImageView!
    
    @IBOutlet weak var desLabel: UILabel!
    var lblTitleGroup : String?
    var uniImageGroup : UIImage?
    var desLabelGroup : String?
    
    
   
       
    @IBAction func toMap(_ sender: UIButton) {
        performSegue(withIdentifier: "Map", sender: nil)
    }
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = lblTitleGroup
        uniImage.image = uniImageGroup
        desLabel.text = desLabelGroup
        
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//      To pass to the next interface
        if segue.identifier == "Map" {
            
           if let vc = segue.destination as? MapViewController {
               print(lblTitle.text ?? "")
               let cityTitle = lblTitle.text ?? ""
               
               switch cityTitle {
                case "King Abdulaziz University":
                   vc.place = Places(name: cityTitle, lattitude: 21.591650171554683, longtitude: 39.24242117250015)
               case "King Fahd University of Petroleum and Minerals":
                   vc.place = Places(name: cityTitle, lattitude: 26.646000569374436, longtitude: 50.1324700620998)
               case "King Saud University":
                   vc.place = Places(name: cityTitle, lattitude: 24.879366139570312, longtitude: 46.62988141561857)
                  
               
               default:
                   vc.place = Places(name: cityTitle, lattitude: 21.591650171554683, longtitude: 39.24242117250015)
                    }
               
               
               }
            
          }
    }

}
