//
//  GameDetailsViewController.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 26/04/1443 AH.
//

import UIKit

class GameDetailsViewController: BaseVC {

    @IBOutlet weak var imageViewGame: UIImageView!
    var game: Games?
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelCategory: UILabel!
    @IBOutlet weak var labelRating: UILabel!
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var labelComments: UILabel!
    @IBOutlet weak var textFieldComment: UITextField!
    @IBOutlet weak var textFieldRating: UITextField!
    
    var rating: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        navigationController?.navigationItem.backButtonTitle = "Back"
        setupView()
        textFieldRating.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @IBAction func buttonSubmitReview(_ sender: Any) {
        if userType == .authenticated {
            let comment = textFieldComment.text
            self.game?.comments =  """
\(game?.comments ?? "")
\(comment ?? "")
"""
            self.game?.rate = Int32(rating)
            
            showLoadingView()
            if let game = game {
                DBManager.shared.updateGame(game: game) {
                    self.hideLoadingView()
                }
            }
        } else {
            showAlert("Please login before rating the game")
        }
    }
    
    func setupView() {
        if let game = game {
            labelTitle.text = game.name
            labelRating.text = "\(game.rate)/10"
            labelCategory.text = getGameType(withType: TypeOfGame(rawValue: Int(game.type)) ?? .action)
            labelDesc.text = game.desc
            labelComments.text = game.comments
            imageViewGame.image = UIImage(named: game.imageURL ?? "1")
        }
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let text = textField.text ?? ""
        let num = Double(text) ?? 0
        if num > 10 {
            textField.text = ""
        } else {
            self.rating = num
        }
    }
}
