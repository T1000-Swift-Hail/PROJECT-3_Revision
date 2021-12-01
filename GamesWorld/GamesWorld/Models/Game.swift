//
//  Games.swift
//  GamesWorld
//
//  Created by Dalal AlSaidi on 23/04/1443 AH.
//

import Foundation

enum TypeOfGame: Int {
    case action = 0
    case adventure = 1
    case actionAdventure = 2
    case rolePlaying = 3
    case simulation = 4
    case strategy = 5
    case sports = 6
    case puzzle = 7
    case idle = 8
    case survivalHorrorGame = 9
}


//enum SubOfTypeOfGame{
//
//    // action Games:
//    case platformer
//    case shooter
//    case fighting
//    case beatEmUp
//    case stealth
//    case survival
//    case rhythm
//
//    // adventure Games:
//    case textAdventures
//    case graphicAdventures
//    case visualNovels
//    case interactiveMovie
//    case realtime3D
//
//    // actionAdventure Games:
//    case survivalHorror
//    case metroidvania
//
//    // rolePlaying Games:
//    case rPGs
//
//    // simulation Games:
//    case lifeSimulation
//    case vehicleSimulation
//
//    // strategy Games:
//    case realTimeStrategy
//    case realTimeTactics
//    case multiplayerOnlineBattleArena
//    case towerDefense
//    case turnBasedStrategy
//    case turnBasedTactics
//    case wargame
//
//    // sports Games:
//    case racing
//    case teamSports
//    case competitive
//    case sportsBasedFighting
//
//    // Action Games:
//    case logicGame
//    case triviaGame
//
//    // idle Games:
//    case idleGaming
//    case casualGame
//    case partyGame
//    case programmingGame
//// Board game/card game of type idle Games
//    case board_CardGame
//    case artGame
//
//}

class Game {
    var name: String
    var rate: Int32
    var type: TypeOfGame
    var comments: String
    var imageURL: String
    var desc: String
    
    init(name: String, rate: Int32 , type: TypeOfGame, comments: String, imageURL: String, desc: String){
        self.name = name
        self.desc = desc
        self.type = type
        self.rate = rate
        self.imageURL = imageURL
        self.comments = comments
    }
}

// MARK: - Global Functions

func getGameType(withType: TypeOfGame) -> String {
    switch withType {
    case .action:
        return "Action"
    case .actionAdventure:
        return "Action Adventure"
    case .adventure:
        return "Adventure"
    case .idle:
        return "Idle"
    case .puzzle:
        return "Puzzle"
    case .rolePlaying:
        return "Role Playing"
    case .simulation:
        return "Simulation"
    case .sports:
        return "Sports"
    case .strategy:
        return "Strategy"
    case .survivalHorrorGame:
        return "Survival Horror Game"
    }
}

// MARK: - Global Variables

var globalUser: User = .init()
var userType: SignIn = .guest
