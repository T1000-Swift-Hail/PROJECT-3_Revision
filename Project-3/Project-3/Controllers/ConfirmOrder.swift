//
//  ConfirmOrder.swift
//  Project-3
//
//  Created by Majed Alshammari on 26/04/1443 AH.
//

import UIKit

class ConfirmOrder: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var payTextField: UITextField!
    var selectedPayment: String?
    var currentCellIndex = 0
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        createPickerView()
        dismissPickerView()
        startTimer()
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex() {
        if currentCellIndex < messages.count - 1 {
            currentCellIndex += 1
        }
        else {
            currentCellIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        switch payTextField.text {
        case "visa":
            alertTypes(title: "You chose visa", message: "Are you sure?")
        case "mastercard":
            alertTypes(title: "You chose mastercard", message: "Are you sure?")
        case "apple pay":
            alertTypes(title: "You chose apple pay", message: "Are you sure?")
        case "mada":
            alertTypes(title: "You chose mada", message: "Are you sure?")
        case "cash":
            alertTypes(title: "You chose cash", message: "Are you sure?")
        default:
            let alert = UIAlertController(title: "payment method not assigned", message: "Please choose payment method", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: false)
        }
    }
    
    func alertTypes(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { ok in
            self.completeAlert()
        }
        alert.addAction(ok)
        present(alert, animated: true)
    }
    func completeAlert(){
        let alert = UIAlertController(title: "Confirmed!", message: "Your order is confirmed successfully", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return payOptions.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return payOptions[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedPayment = payOptions[row] 
        payTextField.text = selectedPayment
        
    }
    
    
    func createPickerView() {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        payTextField.inputView = pickerView
    }
    
    
    func dismissPickerView() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let button = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.action))
        toolBar.setItems([button], animated: true)
        toolBar.isUserInteractionEnabled = true
        payTextField?.inputAccessoryView = toolBar
    }
    
    
    @objc func action() {
        
        view.endEditing(true)
    }


}

extension ConfirmOrder: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return messages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? cell2 else { return UICollectionViewCell()}
        cell.userMessage.text = messages[indexPath.row]
        cell.userMessage.textAlignment = .center
        cell.userMessage.font = UIFont(name: "Georgia Bold", size: 26)
        cell.userMessage.numberOfLines = 4
        cell.backgroundColor = UIColor(named: "ColorBackground")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
