//
//  NotesCellTableViewCell.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 23/04/1443 AH.
//

import UIKit

class NotesCellTableViewCell: UITableViewCell {
    @IBOutlet weak var textDetails: UITextView!
    
    @IBOutlet weak var textTitel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(note:MyNotes){
        textTitel.text = note.titel
        
        textDetails.text = note.detlas
    }
}
