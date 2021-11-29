//
//  MovieVC+CollectionView.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import UIKit

//MARK: - Collection View for Animation


extension MovieVC:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
//    func startTimer() {
//        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNextIndex) , userInfo: nil, repeats: true)
//    }
    
    @objc func moveToNextIndex(){
        if currentCellIndex < arrayMovie.count - 1 {
            currentCellIndex += 1
        } else {
            currentCellIndex = 0
        }
        movieCollection.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        pageControl.currentPage = currentCellIndex
    }
    
 //MARK: -
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.movieCollection {
            return arrayMovie.count
        }
        return posterImage.count
        }
  
    //MARK: -

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.movieCollection {
            
            let movieCell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
            movieCell.imageMovie.image = arrayMovie[indexPath.row] 
            return movieCell
            
        } else {
            guard let posterMovie = collectionView.dequeueReusableCell(withReuseIdentifier: "posterMovie", for: indexPath) as? MovieCollectionViewCell else { return UICollectionViewCell() }
            posterMovie.posterImage.image = posterImage[indexPath.row]
            return posterMovie
        }
    }
   
    //MARK: -

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.movieCollection {
            return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
        } else {
            return CGSize(width: 200 , height: (collectionView.frame.height) / 3 )
        }
    }
    
    
    //MARK: -

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    //MARK: -

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toMovie", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toMovie" {
         
            let selectMovie = posterImage[self.posterCollection.indexPathsForSelectedItems?[0].row ?? 0]
            let destination = segue.destination as! MovieDetails
            destination.imageDetiles =  selectMovie
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
