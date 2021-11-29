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
    
    

    
    @IBAction func doyousave(_ sender: Any) {
        // save in nites entity
        let newNote = MyNotes(context: context)
        newNote.titl = txteTitel
        newNote.detils = txtedetlas.text
        newNote.data_save = NSData()
        do{
        ad.saveContext()
            print("saved")
            txteTitel.text=""
            txtedetlas.text=""
        }
        catch{
            print("error")
        }
    }
    
}

