//
//  watchListVC.swift
//  Movie
//
//  Created by Asma on 30/11/2021.
//

import UIKit

class WatchListVC: UIViewController {

    var watch = [Details]()
    let sections = ["Movie Watch List"]
    
    @IBOutlet weak var watchListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        watchListTableView.delegate = self
        watchListTableView.dataSource = self
    }
}

var list = WatchListVC()
