//
//  MainViewController.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

enum MainVC {
    case main
    case category
}

class MainViewController: BaseVC {

    @IBOutlet weak var tableView: UITableView!
    
    var games = [Games]()
    var type: MainVC = .main
    var selectedCategory: TypeOfGame = .action
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "GameTVC", bundle: nil), forCellReuseIdentifier: "GameTVC")
        
        showLoadingView()
        DBManager.shared.fetchAllGames { games in
            self.hideLoadingView()
            self.games = games
            
            if self.type == .main {
                self.tableView.reloadData()
            } else {
                var games = [Games]()
                self.games.forEach { game in
                    if game.type == self.selectedCategory.rawValue {
                        games.append(game)
                    }
                }
                self.games = games
                self.tableView.reloadData()
            }
        }
        if type == .main {
            self.navigationController?.navigationBar.isHidden = true
            self.tabBarController?.tabBar.isHidden = false
        } else {
            self.navigationController?.navigationBar.isHidden = false
            self.tabBarController?.tabBar.isHidden = true
        }
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyBoard.instantiateViewController(identifier: "GameDetailsViewController") as? GameDetailsViewController else {return}
        controller.game = self.games[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GameTVC", for: indexPath) as? GameTVC else {return UITableViewCell() }
        
        cell.configurecell(with: games[indexPath.row])
        
        return cell
    }
}
