//
//  TreeDescViewController.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 24/04/1443 AH.
//

import UIKit
import CoreData

class TreeDescViewController: UIViewController {
    
    @IBOutlet weak var describImage: UIImageView!
    
    @IBOutlet weak var treeName: UILabel!
    
    @IBOutlet weak var decribtionTree: UILabel!
    
    
    
    var types : Types?
    var treeSet : Types?
    
    var leaves : Leaves?
    var leavesSet : Leaves?
    
    
    
    let persistentContainer : NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "SaveList")
        container.loadPersistentStores(completionHandler: {
            desc , error in
           
            
            if let error = error {
                print(error)
            }
        })
        return container
    }()
    
    
    
    var favoritePlants : [CDTree] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if types != nil {
            
            treeSet = types
            print(treeSet?.name as Any)
            treeName.text = treeSet?.name
            decribtionTree.text = treeSet?.description
            describImage.image = UIImage(named: treeSet?.image ?? "")
            
        } else {
            
            leavesSet = leaves
            print(leavesSet?.nameLeaves as Any)
            treeName.text = leaves?.nameLeaves
            decribtionTree.text = leaves?.describLeaves
            describImage.image = UIImage(named: leaves?.imageLeaves ?? "") 
            
            
        }
       

    }
    
    
  
    @IBAction func addFavorint(_ sender: UIBarButtonItem) {
    
    
            print("clicked")
        sender.tintColor = UIColor.red
        
        
        
        if types != nil {
            
            treeSet = types
            createNewTree(label: treeSet?.name ?? "", image: treeSet?.image ?? "")
            
        } else {
            
            leavesSet = leaves
            createNewTree(label: leavesSet?.nameLeaves ?? "", image: leavesSet?.imageLeaves ?? "")
            
        }
        
    }
    
    
    
    func createNewTree(label : String, image : String){
        print("saving")
        let context = persistentContainer.viewContext
        
        
        context.performAndWait {
            
            let tree = CDTree(context: context)
            tree.label = label
            tree.image = image
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
        
    }
    
    

    
}
