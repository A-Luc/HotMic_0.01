//
//  MicScene.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 12/3/20.
//

import UIKit

class MicScene: UIViewController {
    
    @IBOutlet weak var toLeaderboardsButton: UIButton!
    
    var players:PlayerGroup?
    var passalongPlayer:Int?
    var passalongRound:Int?
    var numOfPlayers:Int?
    var currentPlayer:Player?
    var cardDeck:CardGroup?
    var currentTask:Card?
    
    var secondsRemaining = 30

    @IBOutlet weak var playerName: UILabel!
    
    @IBOutlet weak var timer: UILabel!
    
    @IBOutlet weak var timerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        playerName.text = currentPlayer?.name
        toLeaderboardsButton.isHidden = true
        currentPlayer?.addPoint()
    }
    
    //not my code Link: https://stackoverflow.com/questions/29374553/how-can-i-make-a-countdown-with-nstimer
    
    @IBAction func startTImer(_ sender: Any) {
        timerButton.isHidden = true
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if self.secondsRemaining > -1 {
                    self.timer.text = "\(self.secondsRemaining)"
                    self.secondsRemaining -= 1
                } else {
                    Timer.invalidate()
                    self.toLeaderboardsButton.isHidden = false
                }
            }
    }
    
    
    @IBAction func toLeaderboards(_ sender: Any) {
        performSegue(withIdentifier: "toLeaderboards" , sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Results
        vc.passalongPlayer = passalongPlayer
        vc.passalongRound = passalongRound
        vc.players = players
        vc.currentPlayer = currentPlayer
        vc.numOfPlayers = numOfPlayers
        vc.cardDeck = cardDeck
    }
    
}
