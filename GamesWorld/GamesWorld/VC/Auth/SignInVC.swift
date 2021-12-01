//
//  SignInVC.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 24/04/1443 AH.
//

import UIKit

enum SignIn {
    case authenticated
    case guest
}

class SignInVC: BaseVC {
    
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var buttonRegister: UIButton!
    @IBOutlet weak var buttonGuest: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLogin.setTitle("Login", for: .normal)
        buttonRegister.setTitle("Register", for: .normal)
        buttonRegister.tintColor = .white
        buttonGuest.setTitle("Guest", for: .normal)
        buttonGuest.tintColor = .white
        
        addGamesIfNot()
    }
    
    @IBAction func didTapLogin(_ sender: Any) {
        var loginStatus = false
        let users = DBManager.shared.fetchAllUsers() { users in
            users.forEach { user in
                if user.email == self.emailTf.text && user.password == self.passwordTf.text {
                    loginStatus = true
                    globalUser = user
                    userType = .authenticated
                }
            }
            
            if loginStatus {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyBoard.instantiateViewController(identifier: "TabBarViewController")
                self.navigationController?.pushViewController(controller, animated: true)
            } else {
                self.showAlert("Email/ Password incorrect")
            }
        }
    }
    
    @IBAction func didTapGuest(_ sender: Any) {
        userType = .guest
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(identifier: "TabBarViewController")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func didTapRegister(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyBoard.instantiateViewController(identifier: "RegistrationVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func addGamesIfNot() {
        
        DBManager.shared.fetchAllGames { games in
            if games.isEmpty {
                DBManager.shared.addGame(with: .init(name: "The Last of Us Part II", rate: 0, type: .actionAdventure, comments: "", imageURL: "1", desc: """
Story : Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Resident Evil Village", rate: 0, type: .survivalHorrorGame, comments: "", imageURL: "2", desc: """
Story : Set a few years after the horrifying events in the critically acclaimed Resident Evil 7 biohazard, the all-new storyline begins with Ethan Winters and his wife Mia living peacefully in a new location, free from their past nightmares. Just as they are building their new life together, tragedy befalls them once again.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Battlefield 2042", rate: 0, type: .action, comments: "", imageURL: "3", desc: """
Story : Battlefield™ 2042 is an exhilarating first-person shooter that marks the return of the iconic all-out warfare the franchise is well known for.
Set in a near-future world transformed by disorder, you'll have to adapt and overcome dynamic battlegrounds with the help of your squad and an arsenal of cutting-edge weapons and vehicles.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "FIFA 22", rate: 0, type: .sports, comments: "", imageURL: "4", desc: """
Story : In EA SPORTS™ FIFA 22, every moment on the pitch is elevated with HyperMotion, a gameplay technology designed to harness the power of PlayStation 5. Integrating Advanced 11v11 Match Capture and Machine Learning, HyperMotion brings real-time, real-player movement data from professional footballers in high-intensity matches to FIFA 22 for the most realistic, responsive and fluid gameplay experience in FIFA's history.
"""
                    ))
                
                DBManager.shared.addGame(with: .init(name: "Twelve Minutes", rate: 0, type: .adventure, comments: "", imageURL: "5", desc: """
Story : A husband returns to his apartment after work and is greeted by his wife, who surprises him with the news that she is pregnant. As they start to celebrate, a man claiming to be a cop knocks on their door and accuses the wife of murdering her father eight years ago. The cop attacks them, binds their hands, and proceeds to strangle the husband to death.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Kena: Bridge of Spirits", rate: 0, type: .actionAdventure, comments: "", imageURL: "6", desc: """
Story : Mystery shrouds these curious little creatures. What are they, where did they come from, and most importantly, how can they help Kena restore their corrupted home?
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Kena: Tales of Arise", rate: 0, type: .rolePlaying, comments: "", imageURL: "7", desc: """
Story : For 300 years, Rena has ruled over Dahna, pillaging the planet of its resources and stripping people of their dignity and freedom.
Our tale begins with two people born on different worlds, each looking to change their fate and create a new future.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Shadow Of The Tomb Raider", rate: 0, type: .actionAdventure, comments: "", imageURL: "8", desc: """
Story : Shadow of the Tomb Raider takes place two months after the events of Rise of the Tomb Raider. Lara Croft and her expedition partner, Jonah Maiava, have been keeping tabs on the antagonistic group, Trinity, to prevent them from unleashing havoc upon the world through ancient, supernatural relics. Lara and Jonah track trinity to the city of Cozumel, Mexico, uncovering an operation led by Pedro Dominguez, the head of Trinity’s High Council.
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Shadow Of The Tomb Raider", rate: 0, type: .strategy, comments: "", imageURL: "9", desc: """
Story : The Vex have plunged the Last City into an endless night, threatening the safety once found beneath the watchful presence of the Traveller. It is here, bathed in perpetual moonlight, that Ikora reveals the identity of an unlikely ally that may hold the keys to triumphing over this attack.
 Trailer :  https://youtu.be/hdWkpbPTpmE
"""
                ))
                
                DBManager.shared.addGame(with: .init(name: "Super Monkey Ball Banana Mania", rate: 0, type: .idle, comments: "", imageURL: "10", desc: """
Story : AiAi, MeeMee, Baby and GonGon, the four playable characters from the original releases, all return for Banana Mania, alongside YanYan and Doctor from Banana Blitz; these six characters are playable in all modes and can be customized with unlockable accessories.
 Trailer : https://youtu.be/BnC0mzsQmb8
"""
                ))
            }
        }
        
    }
}
