//
//  OrderTableCell.swift
//  ArtistHub
//
//  Created by Anas Hamad on 26/04/1443 AH.
//

import UIKit
let context = PersistentStorage.shared.context
var items : [CDProducts]! = []
let cdItems = CDProducts()

class OrderTableCell: UITableViewCell {
    
    

    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageViews: UIImageView!
    

    

    
    
    
    let orders : [String] = []
    override func awakeFromNib() {
        super.awakeFromNib()
        items = PersistentStorage.shared.fetchManagedObject(managedObject: CDProducts.self)
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension OrderTableCell : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? OrderTableCell else {return UITableViewCell()}
        
        
        priceLabel.text = items[indexPath.row].productPrice
        nameLabel.text = items[indexPath.row].productName
        categoryLabel.text = items[indexPath.row].productCat
        imageViews.image = UIImage(named: items[indexPath.row].productImage)
        
        tableView.reloadData()
        
        
        return cell
    }
    
    
    
}
