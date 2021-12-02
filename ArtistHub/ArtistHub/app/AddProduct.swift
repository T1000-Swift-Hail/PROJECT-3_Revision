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
    
    var selctedIndex: String?
    
    let context = PersistentStorage.shared.context
    var items : [CDProducts]! = []
    let cdItems = CDProducts()
    
    var collectionData : [Product]!
    
    var selectedImage: UIImage?
    
    
    
    
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
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
//        switch segmentControl.selectedSegmentIndex{
//        case 0 :
            selctedIndex = sender.titleForSegment(at: sender.selectedSegmentIndex)
//        case 1 :
//            selctedIndex = sender.titleForSegment(at: sender.selectedSegmentIndex)
//        case 2 :
//            selctedIndex = sender.titleForSegment(at: sender.selectedSegmentIndex)
//        case 3 :
//            selctedIndex = sender.titleForSegment(at: sender.selectedSegmentIndex)
//        default:
//            performSegue(withIdentifier: "OrderDetail", sender: nil)
//        }
        
        
    }
    
    
    
    @IBAction func addDesign(_ sender: Any) {
        addItem()
    }
   
    
    func addItem(){
        
        guard let name = nameText.text else{return}
        guard let price = priceText.text else {return}
        guard let catogery = catogeryText.text else {return}
        
        var imageToSave: NSData?
        //guard let imageData:Data = Data(selectedImage!) else { return }
        if let imgData = selectedImage {
            if let image1 = imgData.pngData() {
                imageToSave = NSData(data: image1)
            }
            
        }
        
        let contact = Productsf(productName: name, productImage: imageToSave, productPrice: price, productCat: catogery)
        self.cdItems.create(productss: contact)
        
        performSegue(withIdentifier: "OrderDetail", sender: nil)
            
        
        //let image = UIImage(named: "imageName.png")
        //var imageData: Data? = nil
        
        
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
            self?.selectedImage = image
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
