//
//  gameVariables.swift
//  DuneApp
//
//  Created by Quinn Loach on 7/23/23.
//

import Foundation

//number lists
let num1to40: [Int] = Array(1...40)
let num1to6: [Int] = Array(1...6)


//FACTIONS
var atreidesFaction = Faction(name: "Atreides", color: .green, cards: [], spice: 10, forceReserves: [20, 0], leaders: [])

var BeneGeseritFaction = Faction(name: "Bene Geserit", color: .blue, cards: [], spice: 5, forceReserves: [20, 0], leaders: [])

var emperorFaction = Faction(name: "Emperor", color: .red, cards: [], spice: 10, forceReserves: [20, 0], leaders: [])

var fremenFaction = Faction(name: "Fremen", color: .yellow, cards: [], spice: 3, forceReserves: [20, 0], leaders: [])

var harkonenFaction = Faction(name: "Harkonen", color: .black, cards: [], spice: 10, forceReserves: [20, 0], leaders: [])

var spacingGuildFaction = Faction(name: "Spacing Guild", color: .orange, cards: [], spice: 5, forceReserves: [20, 0], leaders: [])

var ixianFaction = Faction(name: "Ixian", color: .gray, cards: [], spice: 10, forceReserves: [13, 7], leaders: [])

var tleilaxuFaction = Faction(name: "Tleilaxu", color: .purple, cards: [], spice: 5, forceReserves: [20, 0], leaders: [])

var choamFaction = Faction(name: "Choam", color: .red, cards: [], spice: 2, forceReserves: [20, 0], leaders: [])

var richeseFaction = Faction(name: "Richese", color: .gray, cards: [], spice: 5, forceReserves: [20, 0], leaders: [])

var kwisatzCount: Int = 0



//CARDS
var cardListInGame: [String] = []
var treacheryDraw: [TreacheryCard] = []
var treacheryDrawCount: Int = 0
var unknownCardsCouldBe: [TreacheryCard] = []
var treacheryDiscard: [TreacheryCard] = []


//GAME STATUS VARIABLES
public var gameTurn: Int = 1
public var nextPhase: String = "Set Up"
public var stormPosition: Int = 1






