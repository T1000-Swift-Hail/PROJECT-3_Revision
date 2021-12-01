//
//  MovieVC+TableView.swift
//  Movie
//
//  Created by Asma on 29/11/2021.
//

import Foundation
import UIKit


extension MovieVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDetiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell
        let movies = arrayDetiles[indexPath.row]
        cell.setUpCell(imageDetiles: UIImage(named: movies.imageDetiles)!, titleDetiles: movies.titleDetiles, describtionDetiles: movies.describtion, ratingDetiles: movies.ratingDetiles)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    //MARK: - WATCHLIST !!
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let favoriteAction = UIContextualAction(style: .normal, title: "WathcList") { (action, view, complemntion) in
            myWatchList.movies.append(self.arrayDetiles[indexPath.row])
            self.createNewList(titleMovie: self.arrayDetiles[indexPath.row].titleDetiles, posterMovie:
                                self.arrayDetiles[indexPath.row].imageDetiles, isWatched: true)
            
            let alertController = UIAlertController(title: "Save Movie", message: "Has been added to your watchlist", preferredStyle: .alert)
            let alertAction  = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        
        favoriteAction.image = UIImage(systemName: "clock")
        favoriteAction.backgroundColor = .systemOrange
        let config = UISwipeActionsConfiguration(actions: [favoriteAction])
        config.performsFirstActionWithFullSwipe = false // No Stretching..
        return config
    }

    
    func createNewList(titleMovie: String, posterMovie: String, isWatched : Bool){
        
        let context = persistentContainer.viewContext
        context.performAndWait {
            let list = MovieWatchList(context: context)
            list.titleMovie = titleMovie
            list.posterMovie = posterMovie
            list.isWatched = isWatched
            
            do {
                try context.save()
            } catch {
                print(error)
            }
        }
        
    }
    
    func convertColorRating() {
        
 
            
        }
    }
    
