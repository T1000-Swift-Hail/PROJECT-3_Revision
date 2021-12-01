//
//  MovieVCViewController.swift
//  Movie
//
//  Created by Asma on 28/11/2021.
//

import UIKit
import CoreData

class MovieVC: UIViewController {
    
    var arrayDetiles = [Details]()
    var timer: Timer?
    var currentCellIndex = 0
    var myWatchListMovies : [MovieWatchList] = []

    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "WatchlistCD")
        
        container.loadPersistentStores (completionHandler: { desc, error in
            if let readError = error {
                print(readError)
            }
        })
        return container
    }()
    
    @IBOutlet weak var movieCollection: UICollectionView!
    @IBOutlet weak var movieTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieCollection.delegate = self
        movieCollection.dataSource = self
        movieTableView.delegate = self
        movieTableView.dataSource = self
        detilesForMovie()
        startTimer()
    }
    
    
    fileprivate func detilesForMovie() {
        arrayDetiles.append(Details.init(titleDetiles: "Spirited Away - 2001", describtion: "During her family's move to the suburbs, a sullen 10-year-old girl wanders int a world ruled by gods, witches, and spirits, and where humans are changed into beasts.", ratingDetiles: 8.6, imageDetiles: UIImageResource.SpiritedAway.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Toy Story - 1995", describtion: "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.", ratingDetiles: 8.3, imageDetiles: UIImageResource.ToyStory.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Spider-Man - 2018", describtion: "Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.", ratingDetiles: 8.4, imageDetiles:UIImageResource.SpiderMan.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Epic - 2013", describtion: "During her family's move to the suburbs, a sullen 10-year-old girl wanders int a world ruled by gods, witches, and spirits, and where humans are changed into beasts.", ratingDetiles: 8.3, imageDetiles:UIImageResource.Epic.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Dune - 2021", describtion: "Feature adaptation of Frank Herbert's science fiction novel, about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.", ratingDetiles: 8.2, imageDetiles:UIImageResource.Dune.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "A Beautiful Mind - 2001", describtion: "After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.", ratingDetiles: 8.2, imageDetiles:UIImageResource.ABeautifulMind.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Hope - 2013", describtion: "Story of an 8 year old girl coping with a gruesome rape damaging her internally and affecting emotionally, trying to overcome all obstacles in the aftermath of the incident with a good support from those around her.", ratingDetiles: 8.3, imageDetiles:UIImageResource.Hope.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Inception - 2010", describtion: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.", ratingDetiles: 8.8, imageDetiles:UIImageResource.Inception.rawValue))
    }
    
    
}
