//
//  File.swift
//  RSP
//
//  Created by Iulia Anisoi on 08.12.2020.
//

import Foundation

enum GameState{
    case start
    case win
    case lose
    case draw
    
    var currentState: String {
        switch self {
        case .lose:
            return "You lose!"
        case .win:
            return "You win!"
        case .draw:
            return "Draw!"
        default:
            return "Start!"
        }
    }
}
