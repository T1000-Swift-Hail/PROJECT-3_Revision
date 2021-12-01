//
//  CategoriesViewController.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let categories: [TypeOfGame] = [.action, .actionAdventure, .adventure, .idle, .puzzle, .rolePlaying, .simulation, .sports, .strategy, .survivalHorrorGame]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CategoryTVC", bundle: nil), forCellReuseIdentifier: "CategoryTVC")
    }
}

extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        guard let controller = storyBoard.instantiateViewController(identifier: "MainViewController") as? MainViewController else {
            return
        }
        
        controller.selectedCategory = self.categories[indexPath.row]
        controller.type = .category
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTVC", for: indexPath) as? CategoryTVC else {return UITableViewCell()}
        
        cell.configureCell(withTitle: getGameType(withType: categories[indexPath.row]))
        
        return cell
    }
}
