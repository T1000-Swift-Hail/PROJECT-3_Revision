//
//  HomeVC+SearchBar.swift
//  Shoping
//
//  Created by mac on 27/04/1443 AH.
//

import Foundation
import UIKit

extension HomeVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchProduct = products
        
        searchProduct  = products.filter({ return $0.name.lowercased().contains(searchText.lowercased()) })
        if searchText.isEmpty {
            searchProduct = products
        }
        print("-----------")
        print(searchProduct)
        searching = true
        productsCollectionView.reloadData()
    }
}


