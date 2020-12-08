//
//  ViewController.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 11/17/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var onePlayerSelectButton: UIButton!
    
    @IBOutlet weak var twoPlayerSelectButton: UIButton!
    
    @IBOutlet weak var threePlayerSelectButton: UIButton!
    
    @IBOutlet weak var fourPlayerSelectButton: UIButton!
    
    @IBOutlet weak var fivePlayerSelectButton: UIButton!
    
    @IBOutlet weak var sixPlayerSelectButton: UIButton!
    
    @IBOutlet weak var toNameEntry: UIButton!
    
    @IBOutlet weak var numPlayers: UITextView!
    
    var numOfPlayers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toNameEntry.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onePlayerSelected(_ sender: Any) {
        numOfPlayers = 1
        numPlayers.text = "1"
        toNameEntry.isHidden = false
    }
    
    @IBAction func twoPlayerSelected(_ sender: Any) {
        numOfPlayers = 2
        numPlayers.text = "2"
        toNameEntry.isHidden = false
    }
    
    @IBAction func threePlayerSelected(_ sender: Any) {
        numOfPlayers = 3
        numPlayers.text = "3"
        toNameEntry.isHidden = false
    }
    
    @IBAction func fourPlayerSelected(_ sender: Any) {
        numOfPlayers = 4
        numPlayers.text = "4"
        toNameEntry.isHidden = false
    }
    
    @IBAction func fivePlayerSelected(_ sender: Any) {
        numOfPlayers = 5
        numPlayers.text = "5"
        toNameEntry.isHidden = false
    }
    
    @IBAction func sixPlayerSelected(_ sender: Any) {
        numOfPlayers = 6
        numPlayers.text = "6"
        toNameEntry.isHidden = false
    }
    
    @IBAction func toNameEntry(_ sender: Any) {
        performSegue(withIdentifier: "numOfPlayersSeg", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NameEntry
        vc.numOfPlayers = numOfPlayers
    }
    
    
    
}

