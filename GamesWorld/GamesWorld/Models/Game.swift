//
//  Games.swift
//  GamesReviews
//
//  Created by Dalal AlSaidi on 23/04/1443 AH.
//

import Foundation

enum TypeOfGame : String {
    case action
    case adventure
    case actionAdventure
    case rolePlaying
    case simulation
    case strategy
    case sports
    case puzzle
    case idle
}

enum SubOfTypeOfGame{
    
    // action Games:
    case platformer
    case shooter
    case fighting
    case beatEmUp
    case stealth
    case survival
    case rhythm
    
    // adventure Games:
    case textAdventures
    case graphicAdventures
    case visualNovels
    case interactiveMovie
    case realtime3D
    
    // actionAdventure Games:
    case survivalHorror
    case metroidvania
    
    // rolePlaying Games:
    case rPGs
    
    // simulation Games:
    case lifeSimulation
    case vehicleSimulation
    
    // strategy Games:
    case realTimeStrategy
    case realTimeTactics
    case multiplayerOnlineBattleArena
    case towerDefense
    case turnBasedStrategy
    case turnBasedTactics
    case wargame
    
    // sports Games:
    case racing
    case teamSports
    case competitive
    case sportsBasedFighting
    
    // Action Games:
    case logicGame
    case triviaGame
    
    // idle Games:
    case idleGaming
    case casualGame
    case partyGame
    case programmingGame
// Board game/card game of type idle Games
    case board_CardGame
    case artGame

     

    
    
}

class Game {
    
    var name : String
    var descriptionofGame : String
    var type : TypeOfGame
    var rate : Int32
    
    init(name: String, description: String , type: TypeOfGame, rate: Int32){
        self.name = name
        self.descriptionofGame = description
        self.type = type
        self.rate = rate
    }
    
    func gameDescription(){
        
    }
    
    
}
