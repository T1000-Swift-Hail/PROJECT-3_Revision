//
//  ToDoCell.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 24/04/1443 AH.
//

import UIKit

class ToDoCell: UITableViewCell {

    @IBOutlet weak var toDoImageView: UIImageView!
    @IBOutlet weak var toDoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
