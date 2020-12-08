//
//  Player.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 11/18/20.
//

import Foundation

class Player{
    internal var name:String = ""
    var points = 0
    
    init(name:String){
        self.name = name
    }
    func addPoint(){
        self.points += 1
    }
}

