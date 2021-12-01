//
//  watchListVC.swift
//  Movie
//
//  Created by Asma on 30/11/2021.
//

import UIKit
import CoreData

class WatchListVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var watch = [Details]()
    
    //MARK: -
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "WatchlistCD")
        
        container.loadPersistentStores (completionHandler: { desc, error in
            if let readError = error {
                print(readError)
            }
        })
        return container
    }()
    
    
    var movieWatchList: [MovieWatchList] = []
    
    //MARK: -
    
    
    @IBOutlet weak var watchListTableView: UITableView!
    
    override func viewDidLoad() {
        watchListTableView.delegate = self
        watchListTableView.dataSource = self
        watchListTableView.allowsMultipleSelection = true
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.fetchAllLists()
        self.watchListTableView.reloadData()
    }
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movieWatchList.count
    }
    
    //MARK: -
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let watchCell = tableView.dequeueReusableCell(withIdentifier: "watchCell", for: indexPath)
        watchCell.textLabel?.text = movieWatchList[indexPath.row].titleMovie
        watchCell.imageView?.image = UIImage(named: movieWatchList[indexPath.row].posterMovie ?? "")
        
        watchCell.textLabel?.font = UIFont(name: "Gill Sans", size: 17)
        watchCell.accessoryType = movieWatchList[indexPath.row].isWatched ? .checkmark : .none
        return watchCell
        
    }
    
    //MARK: -
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
    
    
    //MARK: -
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = self.watchListTableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        persistentContainer.viewContext.performAndWait {
            movieWatchList[indexPath.row].isWatched = true
            try! persistentContainer.viewContext.save()
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = self.watchListTableView.cellForRow(at: indexPath)
        cell?.accessoryType = .none
        
        persistentContainer.viewContext.performAndWait {
            movieWatchList[indexPath.row].isWatched = false
            try! persistentContainer.viewContext.save()
        }
    }
    
    //MARK: - COREDATA
    
    func fetchAllLists() {
        let context = persistentContainer.viewContext
        
        do {
            movieWatchList = try context.fetch(MovieWatchList.fetchRequest())
        } catch {
            print(error)
        }
    }
}


