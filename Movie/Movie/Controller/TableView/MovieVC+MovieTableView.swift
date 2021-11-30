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
        cell.setUpCell(imageDetiles: movies.imageDetiles, titleDetiles: movies.titleDetiles, describtionDetiles: movies.describtion, ratingDetiles: movies.ratingDetiles)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
 //MARK: - WATCHLIST !!
    
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let favoriteAction = UIContextualAction(style: .normal, title: "WathcList") { (action, view, complemntion) in
            print("User Add to Watchlist")
        }

        favoriteAction.image = UIImage(systemName: "clock")
//        favoriteAction.backgroundColor = .blue
        let config = UISwipeActionsConfiguration(actions: [favoriteAction])
        config.performsFirstActionWithFullSwipe = false // No Stretching..
        return config
    }
    
    
}
