//
//  TrendingMoviesVC.swift
//  project_3
//
//  Created by mona aleid on 25/04/1443 AH.
//

import UIKit

class TrendingMoviesVC:UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var arrTrendMovies = [UIImage(named: "CRY MACHO")!, UIImage(named: "ELLAM SHERIYAKUM")!, UIImage(named: "Dune")!, UIImage(named: "ENCANTO")!, UIImage(named: "KING RICHARD")!, UIImage(named: "RON'S GONE WRONG")!, UIImage(named: "THE ADDAMS FAMILY 2")!, UIImage(named: "VENOM LET THERE BE CARNAGE")!]
    
    var timer : Timer?
    var currentCellIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        startTimer()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    
    @objc func moveToNextIndex(){
        if currentCellIndex < arrTrendMovies.count - 1{
           currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        
        collectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally , animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTrendMovies.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "listCell" , for: indexPath) as! ListCollectionViewCell
        cell.newMoviesImage.image = arrTrendMovies[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
    return CGSize(width: 320, height: 490)
        
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
        return 0
        }
    }
 
