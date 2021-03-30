//
//  Sign.swift
//  RSP
//
//  Created by Iulia Anisoi on 08.12.2020.
//

import UIKit

func randomSign()-> Sign {

    switch Int.random(in: 0...2) {
    case 0 : return .rock
    case 1: return .paper
    default: return .scissors
    }
}

enum Sign{
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func winner(opponentSign: Sign) -> GameState{
        if (opponentSign == .rock && self == .scissors) {
            return .lose
        }  else if (opponentSign == .scissors && self == .paper){
            return.lose
        } else if (opponentSign == .paper && self == .rock){
            return .lose
        } else if (opponentSign == self){
            return .draw
        } else {
            return .win
        }
    }
}




