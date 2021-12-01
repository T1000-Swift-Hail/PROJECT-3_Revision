//
//  ViewController.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 23/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txteTitel: UITextField!
    @IBOutlet weak var txtedetlas: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMyNotes(_ sender: Any) {
        
        performSegue(withIdentifier: "gotoMyNotes", sender: nil)
    }
    
    
    
    
    
    @IBAction func doyousave(_ sender: Any) {
        performSegue(withIdentifier: "gotoMyNotes", sender: nil)
        
        
        
        
        
        // save in nites entity
        
        let newNote = MyNotes(context: context)
        newNote.titel = txteTitel.text
        newNote.detlas = txtedetlas.text
        newNote.data_save = Date()
        do{
            ad.saveContext()
            print("saved")
            txteTitel.text=""
            txtedetlas.text=""
            
            
        }
        
    }
    
}

