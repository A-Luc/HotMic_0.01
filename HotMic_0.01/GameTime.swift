//
//  GameTime.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 11/18/20.
//

import UIKit

class GameTime: UIViewController {

    @IBOutlet weak var playerOneName: UILabel!
    
    @IBOutlet weak var task: UILabel!
    
    var players:PlayerGroup?
    var passalongPlayer = 0
    var passalongRound = 1
    var numOfPlayers:Int?
    var currentPlayer:Player?
    var cardDeck = CardGroup()
    var currentTask:Card?
    
    let card1 = Card(content: "Give your greatest cow impression")
    let card2 = Card(content: "Act like you would in a crowd at a sporting event")
    let card3 = Card(content: "Act like a truck sounds")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numOfPlayers = players?.getNumPlayers()
        currentPlayer = players?.getPlayer(pos: passalongPlayer)
        playerOneName.text = currentPlayer?.name
        
        //print(card1.content)
        cardDeck.addCard(card: card1)
        cardDeck.addCard(card: card2)
        cardDeck.addCard(card: card3)
        currentTask = cardDeck.getCard()
        task.text = currentTask?.content
        
    }
    
    @IBAction func startGame(_ sender: Any) {
       performSegue(withIdentifier: "toGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MicScene
        vc.passalongPlayer = passalongPlayer
        vc.passalongRound = passalongRound
        vc.players = players
        vc.currentPlayer = currentPlayer
        vc.numOfPlayers = numOfPlayers
        vc.cardDeck = cardDeck
        vc.currentTask = currentTask
    }
    

}
