//
//  Choose.swift
//  DRAW
//
//  Created by noyer altamimi on 25/04/1443 AH.
//

import UIKit
import PhotosUI

class Choose: UIViewController {
    
    @IBOutlet weak var imageViewTwo: UIImageView!
    
    let drawGif = UIImage.gifImageWithName("DrawGif")
    
    var selectedImage : UIImage? = nil
    let pickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.delegate = self
        imageViewTwo.image = drawGif
        
        
    }
    
    @IBAction func choosePhoto(_ sender: Any) {
        presentPhotoPicker()
    }
    
    
    
    @IBAction func openCam(_ sender: Any) {
        presentImagePicker()
        
    }
    
    @IBAction func blankButton(_ sender: Any) {
        selectedImage = nil
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ViewController
        vc?.selectImage = selectedImage
    }
    func presentImagePicker() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    func presentPhotoPicker() {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 1
        configuration.filter = .images
        
        let photoPicker = PHPickerViewController(configuration: configuration)
        photoPicker.delegate = self
        present(photoPicker, animated: true, completion: nil)
        
    }
    
}
extension Choose: UIImagePickerControllerDelegate, UINavigationControllerDelegate, PHPickerViewControllerDelegate {
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        for result in results {
            if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                    
                    DispatchQueue.main.async {
                        if let image = image as? UIImage {
                            self.selectedImage = image
                            self.dismiss(animated: true) {
                                self.performSegue(withIdentifier: "toNext", sender: nil)
                            }
                        }
                    }
                }
            }
        }
    }
}
