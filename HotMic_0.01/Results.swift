//
//  Results.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 12/3/20.
//

import UIKit

class Results: UIViewController {
    
    @IBOutlet weak var pass_fail: UILabel!
    @IBOutlet weak var leaderboards: UILabel!
    
    //leadboard labels
    @IBOutlet weak var One: UILabel!
    
    @IBOutlet weak var Two: UILabel!
    
    @IBOutlet weak var Three: UILabel!
    
    @IBOutlet weak var Four: UILabel!
    
    @IBOutlet weak var Five: UILabel!
    
    @IBOutlet weak var Six: UILabel!
    
    
    var players:PlayerGroup?
    var passalongPlayer:Int?
    var passalongRound:Int?
    var numOfPlayers:Int?
    var currentPlayer:Player?
    var cardDeck:CardGroup?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideViews(num: numOfPlayers! + 1)
        populateLeaderboard(num:numOfPlayers! + 1)
        //One.text = "Hello"
        //Two.text = "Hellllo"
        
        if passalongRound == 5{
            //game over
        }
        else if passalongPlayer == players?.getNumPlayers() {
            passalongPlayer = 0
            passalongRound! += 1
            currentPlayer = players?.getPlayer(pos: passalongPlayer!)
        }
        else {
            passalongPlayer! += 1
            currentPlayer = players?.getPlayer(pos: passalongPlayer!)
        }
        //have to add check to make sure round is not over and we go out of bounds for the player group
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPlayer(_ sender: Any) {
        performSegue(withIdentifier: "toMidGame", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MidGame
        vc.passalongPlayer = passalongPlayer
        vc.passalongRound = passalongRound
        vc.players = players
        vc.currentPlayer = currentPlayer
        vc.numOfPlayers = numOfPlayers
        vc.cardDeck = cardDeck
    }
    
    func hideViews(num: Int){
        if(num == 1){
            Two.isHidden = true
            Three.isHidden = true
            Four.isHidden = true
            Five.isHidden = true
            Six.isHidden = true
        }
        if(num == 2){
            Three.isHidden = true
            Four.isHidden = true
            Five.isHidden = true
            Six.isHidden = true
        }
        if(num == 3){
            Four.isHidden = true
            Five.isHidden = true
            Six.isHidden = true
        }
        if(num == 4){
            Five.isHidden = true
            Six.isHidden = true
        }
        if(num == 5){
            Six.isHidden = true
        }
    }
    func populateLeaderboard(num: Int){
        let ranking = players?.getRanking()
        if(num == 1){
            let one = ranking![0].points
            One.text = ranking![0].name + ": " + String(one)
        }
        if(num == 2){
            let one = ranking![1].points/2
            let two = ranking![0].points/2
            One.text = ranking![0].name + ": " + String(one)
            Two.text = ranking![0].name + ": " + String(two)
        }
        if(num == 3){
            let one = ranking![2].points/2
            let two = ranking![1].points/2
            let three = ranking![0].points/2
            One.text = ranking![2].name + ": " + String(one)
            Two.text = ranking![1].name + ": " + String(two)
            Three.text = ranking![0].name + ": " + String(three)
        }
        if(num == 4){
            let one = ranking![3].points/2
            let two = ranking![2].points/2
            let three = ranking![1].points/2
            let four = ranking![0].points/2
            One.text = ranking![3].name + ": " + String(one)
            Two.text = ranking![2].name + ": " + String(two)
            Three.text = ranking![1].name + ": " + String(three)
            Four.text = ranking![0].name + ": " + String(four)
        }
        if(num == 5){
            let one = ranking![4].points/2
            let two = ranking![3].points/2
            let three = ranking![2].points/2
            let four = ranking![1].points/2
            let five = ranking![0].points/2
            One.text = ranking![4].name + ": " + String(one)
            Two.text = ranking![3].name + ": " + String(two)
            Three.text = ranking![2].name + ": " + String(three)
            Four.text = ranking![1].name + ": " + String(four)
            Five.text = ranking![0].name + ": " + String(five)
        }
        if(num == 6){
            let one = ranking![5].points/2
            let two = ranking![4].points/2
            let three = ranking![3].points/2
            let four = ranking![2].points/2
            let five = ranking![1].points/2
            let six = ranking![0].points/2
            One.text = ranking![5].name + ": " + String(one)
            Two.text = ranking![4].name + ": " + String(two)
            Three.text = ranking![3].name + ": " + String(three)
            Four.text = ranking![2].name + ": " + String(four)
            Five.text = ranking![1].name + ": " + String(five)
            Six.text = ranking![0].name + ": " + String(six)
        }
    }
}
   
