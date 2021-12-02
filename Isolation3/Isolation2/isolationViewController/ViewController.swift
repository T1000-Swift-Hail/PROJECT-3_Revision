//
//  ViewController.swift
//  Isolation2
//
//  Created by hana Alshammri on 25/04/1443 AH.
//
import AVFoundation
import UIKit
import PhotosUI


class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageMusic: UIImageView!
    
    let sounddImage = UIImage.gifImageWithName("C-Rod-Music-About")
      var selectedImage : UIImage? = nil
      let pickerController = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerController.delegate = self
        imageMusic.image = sounddImage
        
    }
    

   
    
  
    
    var player:  AVAudioPlayer?
    
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    

    
    @IBAction func didTapButton() {
        music(songnumber: 1, buttonSelected: firstButton)
    }
    @IBAction func didTapButton_2() {
        music(songnumber: 2, buttonSelected: secondButton)
    }
    @IBAction func didTapButton_3() {
        music(songnumber: 3, buttonSelected: thirdButton)
    }
    
    func music(songnumber:Int,buttonSelected:UIButton) {
        
        if let player = player ,player.isPlaying {
            //stop playbak
            buttonSelected.setTitle("Stop", for: .normal)
            player.stop()
        }
        else {
            // set up playe
            buttonSelected.setTitle("Play", for: .normal)
            let urlString = Bundle.main.path(forResource: "audio\(songnumber)", ofType: "mp3")
            
            do {
                try  AVAudioSession.sharedInstance().setMode(.default)
                
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                guard let player = player else {
                    return
                }
                player.play()
                
            }
            catch {
                print("something ment wrong")
            }
        }
        
    }
}


