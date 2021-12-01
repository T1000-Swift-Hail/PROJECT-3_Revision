//
//  TableviewItemShow.swift
//  ArtistHub
//
//  Created by Anas Hamad on 23/04/1443 AH.
//

import Foundation
import UIKit
import CoreData

class AddProduct: UIViewController{
    
    @IBOutlet var addProduct: UIButton!
    @IBOutlet var profileImgView: UIImageView!
    
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var nameText: UITextField!
    
    @IBOutlet var catogeryText: UITextField!
    
    @IBOutlet var priceText: UITextField!
    
    let context = PersistentStorage.shared.context
    var items : [CDProducts]! = []
    let cdItems = CDProducts()
    
    var collectionData : [Product]!
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = PersistentStorage.shared.fetchManagedObject(managedObject: CDProducts.self)
        
    }
    
    
    @IBAction func didTapOnImageView(sender: UITapGestureRecognizer) {
        //call Alert function
        self.showAlert()
    }

    @IBAction func DoneBottun(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func Addbottun(_ sender: Any) {
        


    }
    
    
    @IBAction func segmantAdd(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex{
        case 0 :
            
            performSegue(withIdentifier: "OrderDetail", sender: nil)
        case 1 :
            
            performSegue(withIdentifier: "OrderDetail", sender: nil)
        case 2 :
            
            performSegue(withIdentifier: "OrderDetail", sender: nil)
        case 3 :
            
            performSegue(withIdentifier: "OrderDetail", sender: nil)
            
        default:
            
          performSegue(withIdentifier: "OrderDetail", sender: nil)
        }
            
        }
        
        
        
        
    @IBAction func addDesign(_ sender: Any) {
        performSegue(withIdentifier: "OrderDetail", sender: nil)
        
    }
    func saveCoreData(price:String,name:String,cato:String,image:String?) -> Bool {
        
        if name == "" || price  == "" || cato == "" || image == "" { return false }

        let contact = Productsf(productName: name, productImage: image, productPrice: price, productCat: cato)
        self.cdItems.create(productss: contact)
        
        return true
    }
    
        
        
        
    
    func addItem(){
        
        guard let name = nameText.text else{return}
        guard let price = priceText.text else {return}
        guard let catogery = catogeryText.text else {return}
       
        if self.saveCoreData(price: price, name: name, cato: catogery, image: nil) {
            self.items = PersistentStorage.shared.fetchManagedObject(managedObject: CDProducts.self)
        
        print(items)
            print("kkkkkkkkkkkkkk")
        
        
        
    }
}
}
    
    
    


extension AddProduct: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    private func showAlert() {

        let alert = UIAlertController(title: "Image Selection", message: "From where you want to pick this image?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: {(action: UIAlertAction) in
            self.getImage(fromSourceType: .camera)
        }))
        alert.addAction(UIAlertAction(title: "Photo Album", style: .default, handler: {(action: UIAlertAction) in
            self.getImage(fromSourceType: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

    //get image from source type
    private func getImage(fromSourceType sourceType: UIImagePickerController.SourceType) {

        //Check is source type available
        if UIImagePickerController.isSourceTypeAvailable(sourceType) {

            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = sourceType
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }

    //MARK:- UIImagePickerViewDelegate.
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        self.dismiss(animated: true) { [weak self] in

            guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
            //Setting image to your image view
            self?.profileImgView.image = image
        }
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}
