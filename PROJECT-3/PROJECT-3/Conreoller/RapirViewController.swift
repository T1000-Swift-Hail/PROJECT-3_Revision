//
//  ViewController.swift
//  PROJECT-3
//
//  Created by Abdoalaziz Alshammari on 29/11/2021.
//

import UIKit
//class for rapir view controller
class RapirViewController: UIViewController {
// define new properties to asign to for the cpmpany name
    let phoneCompanies = Companies()
    // assgin text data and selecte image to no value
    var selectedTextData = ""
    var selectedImageData : UIImage? = nil
    
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var collectionViewInViewController: UICollectionView!
    
    @IBOutlet weak var bottonInViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // function for the delegates
        dataSetDelegate()
        textView.textColor = .systemBlue
    }
    // button to add text view and slected image
    @IBAction func bottonToAddTextAndSelectedImage(_ sender: Any) {
        // I use condtion with OR gate and display alert to the customer
        if textView.text == "" || selectedImageData == nil {
            DisplayAlert(withTitle: NSLocalizedString("Please select your phone's company and write your phone's issue", comment: ""), message: NSLocalizedString("Please Try Again!", comment: ""), isEntered: false)
        }else{
            DisplayAlert(withTitle: NSLocalizedString("yuor order is set !", comment: ""), message: "", isEntered: true)
            
            selectedTextData = textView.text
            
            performSegue(withIdentifier: "second", sender: nil)
            
            print(selectedTextData)
            
        }
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
            
        }
        
    }
    
}
