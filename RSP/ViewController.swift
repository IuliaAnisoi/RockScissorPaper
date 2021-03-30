//
//  ViewController.swift
//  RSP
//
//  Created by Iulia Anisoi on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var playerRock: UIButton!
    @IBOutlet weak var playerPaper: UIButton!
    @IBOutlet weak var playerScissors: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         updateUI(state: .start)
    }


    @IBAction func rockButton(_ sender: Any) {
        let mySign: Sign = .rock
        
        let gameState = mySign.winner(opponentSign: randomSign())
        updateUI(state: gameState)
    }
    @IBAction func paperButton(_ sender: Any) {
        let gameState = Sign.paper.winner(opponentSign: randomSign())
        updateUI(state: gameState)
    }
    @IBAction func scissorsButton(_ sender: Any) {
        let gameState = Sign.scissors.winner(opponentSign: randomSign())
        updateUI(state: gameState)
    }
    @IBAction func playAgainButton(_ sender: Any) {
        updateUI(state: .start)
    }
    
    func updateUI(state: GameState) {
        switch state {
        case .win:
            view.backgroundColor = .green
        case .lose:
            view.backgroundColor = .red
        case .draw:
            view.backgroundColor = .blue
        default:
            view.backgroundColor = .cyan
        }
        
        if state == .start {
            sign.text = "🏓"
            playAgainButton.isHidden = true
        }else{
            playAgainButton.isHidden = false
        }
        gameStatus.text = state.currentState
        gameStatus.sizeToFit()
    }
    
}

