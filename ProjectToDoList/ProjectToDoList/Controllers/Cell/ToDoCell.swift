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
    }
    
    func setUpCell(taskName :String , taskPhoto :UIImage){
        toDoImageView.image = taskPhoto
        toDoLabel.text = taskName
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
