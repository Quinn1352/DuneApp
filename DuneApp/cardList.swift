//
//  cardList.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/23/23.
//

import Foundation

/*class TreacheryCardDeck{
    public var cardListInGame: [String]
    public var treacheryDraw: [TreacheryCard]
    public var treacheryDrawCount: Int
    public var unknownCardsCouldBe: [TreacheryCard]
    public var treacheryDiscard: [TreacheryCard]
    
    init(cardListInGame: [String], treacheryDraw: [TreacheryCard], treacheryDrawCount: Int, unknownCardsCouldBe: TreacheryCard, treacheryDiscard: [TreacheryCard]){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}*/

class TreacheryCard{
    public let name: String
    public var numInDraw: Int
    public let sortingIndex: Int
    
    init(name: String, numInDraw: Int, sortingIndex: Int) {
        self.name = name
        self.numInDraw = numInDraw
        self.sortingIndex = sortingIndex
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public let baseGameCardList: [String] = ["Unknown Card", "Projectile Weapon", "Poison Weapon", "Lasgun", "Projectile Defense", "Poison Defense", "Cheap Hero", "Truth Trance", "Karama", "Family Atomics", "Hajr", "Tleilaxu Ghola", "Weather Control", "Worthless Card"]


public let cardList: [String] = ["Unknown Card", "Projectile Weapon", "Poison Weapon", "Lasgun", "Projectile Defense", "Poison Defense", "Cheap Hero", "Truth Trance", "Karama", "Family Atomics", "Hajr", "Tleilaxu Ghola", "Weather Control", "Worthless Card", "Artillery Strike", "Chemistry", "Poison Blade", "Poison Tooth", "Shield Snooper", "Weirding Way", "Amal", "Harvester", "Thumper"]



let baseGameTreacheryCardList: [TreacheryCard] = [unknownCard, baseProjectileWeapon, basePoisonWeapon, baseShield, baseSnooper]


let treacheryCardList: [TreacheryCard] = [unknownCard, expandedProjectileWeapon, expandedPoisonWeapon, expandedShield, expandedSnooper]
 




let unknownCard: TreacheryCard = TreacheryCard(name: "Unknown Card", numInDraw: 0, sortingIndex: 0)

let baseProjectileWeapon: TreacheryCard = TreacheryCard(name: "Projectile Weapon", numInDraw: 4, sortingIndex: 1)
let expandedProjectileWeapon: TreacheryCard = TreacheryCard(name: "Projectile Weapon", numInDraw: 5, sortingIndex: 1)

let basePoisonWeapon: TreacheryCard = TreacheryCard(name: "Poison Weapon", numInDraw: 4, sortingIndex: 2)
let expandedPoisonWeapon: TreacheryCard = TreacheryCard(name: "Poison Weapon", numInDraw: 5, sortingIndex: 2)

let baseShield: TreacheryCard = TreacheryCard(name: "Shield", numInDraw: 4, sortingIndex: 3)
let expandedShield: TreacheryCard = TreacheryCard(name: "Shield", numInDraw: 5, sortingIndex: 3)

let baseSnooper: TreacheryCard = TreacheryCard(name: "Snooper", numInDraw: 4, sortingIndex: 4)
let expandedSnooper: TreacheryCard = TreacheryCard(name: "Snooper", numInDraw: 5, sortingIndex: 4)

