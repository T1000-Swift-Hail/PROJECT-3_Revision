//
//  MovieVC+WatchListTableView.swift
//  Movie
//
//  Created by Asma on 30/11/2021.
//

import Foundation
import UIKit

extension WatchListVC: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: -
    override func viewWillAppear(_ animated: Bool) {
        watchListTableView.reloadData()
    }
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myWatchList.movies.count
    }
    
    //MARK: -
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let watchCell = tableView.dequeueReusableCell(withIdentifier: "watchCell", for: indexPath)
        watchCell.textLabel?.text = myWatchList.movies[indexPath.row].titleDetiles
        
        watchCell.imageView?.image = myWatchList.movies[indexPath.row].imageDetiles
        
        watchCell.textLabel?.font = UIFont(name: "Gill Sans", size: 17)
        
        
        return watchCell
        
    }
    
    //MARK: -
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //MARK: -
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
    }
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = self.watchListTableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = self.watchListTableView.cellForRow(at: indexPath)
        cell?.accessoryType = .none
    }
    
    
    
    
    
}

