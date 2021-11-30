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

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    //MARK: -

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    //MARK: -

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.sections.count
    }
    
    //MARK: -

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let watchCell = tableView.dequeueReusableCell(withIdentifier: "watchCell", for: indexPath)
        watchCell.textLabel?.text = list.watch[indexPath.row].titleDetiles
        watchCell.textLabel?.text = list.watch[indexPath.row].describtion
        watchCell.textLabel?.text = list.watch[indexPath.row].ratingDetiles.description
        watchCell.imageView?.image = list.watch[indexPath.row].imageDetiles
        
        return watchCell
        
    }
    
    //MARK: -

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //MARK: -

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        list.watch.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }

    
}

