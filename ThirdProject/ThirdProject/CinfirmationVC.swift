//
//  CinfirmationVC.swift
//  ThirdProject
//
//  Created by iAbdullah17 on 26/04/1443 AH.
//

import UIKit

class CinfirmationVC: UIViewController {
    
    var nextImage : UIImage?
    
    @IBOutlet weak var imageOrder: UIImageView!
    
    
    @IBOutlet weak var paymentMethood: UITextField!
    
    let payment = ["Apple Pay", "Mada", "Cash"]
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOrder.image = nextImage
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        paymentMethood.inputView = pickerView
        
        

        
        buttonPickerview()

       
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.imageOrder.transform.ty = -view.frame.width
        UIView.animate(withDuration: 2, delay: 0, options: [.curveEaseIn], animations: {
            self.imageOrder.transform.ty = 0
        }, completion: nil)
        self.paymentMethood.transform.tx = -view.frame.width
        UIView.animate(withDuration: 2, delay: 0, options: .curveEaseIn , animations : {
            self.paymentMethood.transform.tx = 0
        })
        
    }
 
    
    
    
    @IBAction func paymentOfBill(_ sender: Any) {
        
        
        switch paymentMethood.text {
        case "Apple Pay":
            alertMethod(title: "Thanks!", message: "Enjoy Your Meal!")
        case "Mada":
            alertMethod(title: "Thanks!", message: "Enjoy Your Meal!")
        case "Cash":
            alertMethod(title: "Warning!", message: "You Have 45 Minutes To Come Or Your Order Will Be Cancel!")
        default:
            let alert = UIAlertController(title: "Please Chose Your Payment", message: "", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Try Again!", style: .default)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        
        
        }
        
        }
    func alertMethod(title: String, message:String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    
        let ok = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    
    }
    func buttonPickerview(){
        let addBar = UIToolbar()
        addBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        addBar.setItems([button], animated: true)
        addBar.isUserInteractionEnabled = true
        paymentMethood?.inputAccessoryView = addBar
    }
    @objc func action() {
        view.endEditing(true)
    }

}



extension CinfirmationVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return payment.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return payment[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        paymentMethood.text = payment[row]
        paymentMethood.resignFirstResponder()
    }
    
}
