//
//  PlayerGroup.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 11/20/20.
//

import Foundation

class PlayerGroup{
    var players:[Player]!
    
    init(){
        self.players = []
    }
    init(firstPlayer:Player){
        self.players.append(firstPlayer)
    }
    func addPlayer(playerAdd:Player){
        self.players.append(playerAdd)
    }
    func getPlayer(pos:Int) -> Player{
        return players[pos]
    }
    func getNumPlayers()-> Int{
        return self.players.count - 1
    }
    
    func getRanking() -> [Player]{
        var rank:[Player] = self.players
        let size = self.getNumPlayers()
        
        //simple insertion sort
        for index in 1..<size+1{
            let value = rank[index]
            var position = index
            while position > 0 && rank[position - 1].points > value.points{
                rank[position] = rank[position - 1]
                position -= 1
            }
            rank[position] = value
        }
        return rank
    }
}
