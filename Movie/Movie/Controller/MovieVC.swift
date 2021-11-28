//
//  MovieVCViewController.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import UIKit

class MovieVC: UIViewController {
    
    @IBOutlet weak var movieCollection: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var posterCollection: UICollectionView!
    
    
    var timer: Timer?
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieCollection.delegate = self
        movieCollection.dataSource = self
        posterCollection.delegate = self
        posterCollection.dataSource = self
        posterCollection.collectionViewLayout = UICollectionViewFlowLayout()
        
        pageControl.numberOfPages = arrayMovie.count
        startTimer()
    }
    
}
