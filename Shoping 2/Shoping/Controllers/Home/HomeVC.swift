//
//  ViewController.swift
//  Shoping
//
//  Created by mac on 25/04/1443 AH.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var listCollectionView: UICollectionView!
    @IBOutlet weak var productsCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var leist = [Leisles]()
    var products = [Plant] ()
    var slecetProduct : Plant? = nil
    var slecetChairs : Leisles? = nil
    var searchProduct = [Plant]()
    var selectedleist: String?
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        products = Plant.getProducts()
        searchBar.delegate = self
        searchProduct = products
        leist = Leisles.getLeisles()
        delegates()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? DetalsVC
        vc?.slecetProduct = slecetProduct
        
    }
}
