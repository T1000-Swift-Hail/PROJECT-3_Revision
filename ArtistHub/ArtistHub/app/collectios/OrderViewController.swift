//
//  OrderViewController.swift
//  ArtistHub
//
//  Created by Anas Hamad on 26/04/1443 AH.
//

import UIKit

class OrderViewController: UIViewController {


    @IBOutlet var tableView: UITableView!
    
    //let cdItems = CDProducts()
    var imageselected : UIImage?
    var nameLabela : String?
    var priceLabela : String?
    var categoryLabela : String?
    var items : [CDProducts]?
    let context = PersistentStorage.shared.context
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items = PersistentStorage.shared.fetchManagedObject(managedObject: CDProducts.self)
       
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func doneBottun(_ sender: Any) {
        if tableView.isEditing {
            tableView.isEditing = false
        }else{
            tableView.isEditing = true
        }
    }
    
}
extension OrderViewController : UITableViewDelegate,UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        items?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? OrderTableCell else {return UITableViewCell()}
        
        guard let items = items else { return UITableViewCell() }
        guard let image = items[indexPath.row].productImage else { return UITableViewCell() }
        
        cell.priceLabel.text = items[indexPath.row].productPrice
        cell.nameLabel.text = items[indexPath.row].productName
        cell.categoryLabel.text = items[indexPath.row].productCat
        if let image = UIImage(data:image as Data, scale:1.0) {
            cell.imageViews.image = image
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let product = items?[indexPath.row]
            guard let product = product else {return}
            items?.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            
            
            context.delete(product)
            PersistentStorage.shared.saveContext()
            
            
        }
    }
    
    

    
    
    
}
