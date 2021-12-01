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
    
    
    //MARK: - Save CoreData
    
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "WatchlistCD")
        
        container.loadPersistentStores (completionHandler: { desc, error in
            if let readError = error {
                print(readError)
            }
        })
        return container
    }()
    
    //MARK: - connect TableView and CollectionView
    
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
    
    //MARK: - Array to fill in the details of the films in the TableView
    
    
    fileprivate func detilesForMovie() {
        arrayDetiles.append(Details.init(titleDetiles: "Spirited Away - 2001", describtion: "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.", ratingDetiles: 8.6, imageDetiles:UIImageResource.SpiritedAway.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "BloodRayne - 2005", describtion: "In the eighteenth century, a vampire escapes from the freak show, in which she once participated, and teams up with a group of vampire slayers to kill the man who raped her mother.", ratingDetiles: 2.9, imageDetiles:UIImageResource.BloodRayne.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "The Walking Dead - 2020", describtion: "The series will focus on the first generation to grow up during the zombie apocalypse.", ratingDetiles: 4.3, imageDetiles: UIImageResource.TheWalkingDead.rawValue))

//        arrayDetiles.append(Details.init(titleDetiles: "One Shot - 2021", describtion: "An elite squad of Navy SEAL's, on a covert mission to transport a prisoner off a CIA black site island prison, are trapped when insurgents attack while trying to rescue the same prisoner.", ratingDetiles: 5.5, imageDetiles: UIImageResource.OneShot.rawValue))
        
        
        arrayDetiles.append(Details.init(titleDetiles: "The Godfather - 1972", describtion: "The Godfather follows Vito Corleone Don of the Corleone family as he passes the mantel to his son Michael", ratingDetiles: 9.2, imageDetiles:UIImageResource.TheGodfather.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Slender Man - 2018", describtion: "In a small town in Massachusetts, a group of friends, fascinated by the internet lore of the Slender Man, attempt to prove that he doesn't actually exist - until one of them mysteriously goes missing.", ratingDetiles: 3.2, imageDetiles:UIImageResource.SlenderMan.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Spencer - 2021", describtion: "During her Christmas holidays with the royal family at the Sandringham estate in Norfolk, England, Diana Spencer, struggling with mental health problems, decides to end her decade-long marriage to Prince Charles.", ratingDetiles: 7.0, imageDetiles:UIImageResource.Spencer.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "Don't Breathe 2 - 2021", describtion: "The sequel is set in the years following the initial deadly home invasion, where Norman Nordstrom (Stephen Lang) lives in quiet solace until his past sins catch up to him.", ratingDetiles: 8.3, imageDetiles:UIImageResource.DontBreathe.rawValue))
        arrayDetiles.append(Details.init(titleDetiles: "One Shot - 2021", describtion: "An elite squad of Navy SEAL's, on a covert mission to transport a prisoner off a CIA black site island prison, are trapped when insurgents attack while trying to rescue the same prisoner.", ratingDetiles: 5.5, imageDetiles: UIImageResource.OneShots.rawValue))
        
    }
    
    
}
