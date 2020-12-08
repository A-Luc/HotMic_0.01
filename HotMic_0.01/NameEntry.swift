//
//  NameEntry.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 11/18/20.
//

import UIKit

class NameEntry: UIViewController {
    
    @IBOutlet weak var userOneName: UITextField!
    
    @IBOutlet weak var userTwoName: UITextField!
    
    @IBOutlet weak var userThreeName: UITextField!
    
    @IBOutlet weak var userFourName: UITextField!
    
    @IBOutlet weak var userFiveName: UITextField!
    
    @IBOutlet weak var userSixName: UITextField!
    
    var numOfPlayers:Int!
    
    var group = PlayerGroup()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userOneName.delegate = self
        userTwoName.delegate = self
        userThreeName.delegate = self
        userFourName.delegate = self
        userFiveName.delegate = self
        userSixName.delegate = self
        hideViews(num: numOfPlayers)

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func button(_ sender: Any) {
        if numOfPlayers == 1{
            let one = Player(name: userOneName.text!)
            group.addPlayer(playerAdd: one)
            performSegue(withIdentifier: "startGame", sender: self)
        }
        else if numOfPlayers == 2{
            let one = Player(name: userOneName.text!)
            let two = Player(name: userTwoName.text!)
            group.addPlayer(playerAdd: one)
            group.addPlayer(playerAdd: two)
            performSegue(withIdentifier: "startGame", sender: self)
        }
        else if numOfPlayers == 3{
            let one = Player(name: userOneName.text!)
            let two = Player(name: userTwoName.text!)
            let three = Player(name: userThreeName.text!)
            group.addPlayer(playerAdd: one)
            group.addPlayer(playerAdd: two)
            group.addPlayer(playerAdd: three)
            performSegue(withIdentifier: "startGame", sender: self)
        }
        else if numOfPlayers == 4{
            let one = Player(name: userOneName.text!)
            let two = Player(name: userTwoName.text!)
            let three = Player(name: userThreeName.text!)
            let four = Player(name: userFourName.text!)
            group.addPlayer(playerAdd: one)
            group.addPlayer(playerAdd: two)
            group.addPlayer(playerAdd: three)
            group.addPlayer(playerAdd: four)
            performSegue(withIdentifier: "startGame", sender: self)
        }
        else if numOfPlayers == 5{
            let one = Player(name: userOneName.text!)
            let two = Player(name: userTwoName.text!)
            let three = Player(name: userThreeName.text!)
            let four = Player(name: userFourName.text!)
            let five = Player(name: userFiveName.text!)
            group.addPlayer(playerAdd: one)
            group.addPlayer(playerAdd: two)
            group.addPlayer(playerAdd: three)
            group.addPlayer(playerAdd: four)
            group.addPlayer(playerAdd: five)
            performSegue(withIdentifier: "startGame", sender: self)
        }
        else if numOfPlayers == 6{
            let one = Player(name: userOneName.text!)
            let two = Player(name: userTwoName.text!)
            let three = Player(name: userThreeName.text!)
            let four = Player(name: userFourName.text!)
            let five = Player(name: userFiveName.text!)
            let six = Player(name: userSixName.text!)
            group.addPlayer(playerAdd: one)
            group.addPlayer(playerAdd: two)
            group.addPlayer(playerAdd: three)
            group.addPlayer(playerAdd: four)
            group.addPlayer(playerAdd: five)
            group.addPlayer(playerAdd: six)
            performSegue(withIdentifier: "startGame", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! GameTime
        vc.players = group
        vc.numOfPlayers = group.getNumPlayers()
    }
    
    func hideViews(num:Int){
        if num == 1{
            userTwoName.isHidden = true
            userThreeName.isHidden = true
            userFourName.isHidden = true
            userFiveName.isHidden = true
            userSixName.isHidden = true
        }
        else if num == 2{
            userThreeName.isHidden = true
            userFourName.isHidden = true
            userFiveName.isHidden = true
            userSixName.isHidden = true
        }
        else if num == 3{
            userFourName.isHidden = true
            userFiveName.isHidden = true
            userSixName.isHidden = true
        }
        else if num == 4{
            userFiveName.isHidden = true
            userSixName.isHidden = true
        }
        else if num == 5{
            userSixName.isHidden = true
        }
    }
    

    

}

//Editing the text field class so that the keyboard will go away
extension NameEntry : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        return true
    }
}


