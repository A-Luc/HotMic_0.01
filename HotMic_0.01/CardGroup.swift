//
//  CardGroup.swift
//  HotMic_0.01
//
//  Created by Austin Lucas on 12/3/20.
//

import Foundation

class CardGroup{
    var cards:[Card]!
    
    init(){
        self.cards = []
    }
    init(firstCard:Card) {
        self.cards.append(firstCard)
    }
    func addCard(card:Card){
        self.cards.append(card)
    }
    func shuffleCards(){
        self.cards.shuffle()
    }
    func getCard() -> Card{
        shuffleCards()
        return cards[0]
    }
}
