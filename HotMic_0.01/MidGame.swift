//
//  MidGame.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 12/3/20.
//

import UIKit

class MidGame: UIViewController {
    
    var players:PlayerGroup?
    var passalongPlayer:Int?
    var passalongRound:Int?
    var numOfPlayers:Int?
    var currentPlayer:Player?
    var cardDeck:CardGroup?
    var currentTask:Card?

    @IBOutlet weak var playerName: UILabel!
    
    @IBOutlet weak var task: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerName.text = currentPlayer?.name
        task.text = cardDeck?.getCard().content

        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: Any) {
        performSegue(withIdentifier: "toMic", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MicScene
        vc.passalongPlayer = passalongPlayer
        vc.passalongRound = passalongRound
        vc.players = players
        vc.currentPlayer = currentPlayer
        vc.numOfPlayers = numOfPlayers
        vc.cardDeck = cardDeck
    }
    
}
