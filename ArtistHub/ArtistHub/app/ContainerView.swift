//
//  containerView.swift
//  ArtistHub
//
//  Created by Anas Hamad on 25/04/1443 AH.
//

import UIKit

class ContainerView: UIViewController {
    @IBOutlet var tableViewListingProdcut: UITableView!

    let likes = ProductsDetailsCollectionCell()
    
    override func viewDidLoad() {
        setdelegate()

    }
    
    
    

         
         
         
         
     
    
    
}



extension ContainerView : UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    func setdelegate(){
        
        tableViewListingProdcut.dataSource = self
        tableViewListingProdcut.delegate = self
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myData.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellA = tableView.dequeueReusableCell(withIdentifier: "TableDetailCell", for: indexPath) as? TableViewCustumCell  else { return UITableViewCell()}

        cellA.catogeryLabel.text =  myData[indexPath.section][indexPath.row].categoryName
        cellA.collectionData = myData[indexPath.section]
        return cellA
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    
    
    
    
    
    
}
