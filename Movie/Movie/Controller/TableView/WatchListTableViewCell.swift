//
//  WatchListTableViewCell.swift
//  Movie
//
//  Created by Asma on 29/11/2021.
//

import UIKit

class WatchListTableViewCell: UITableViewCell {
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    }
    
}
