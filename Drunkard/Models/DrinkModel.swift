//
//  DrinkModel.swift
//  Drunkard
//
//  Created by boschi nathan on 18/03/2024.
//

import Foundation

struct Drink: Identifiable {
    var id: ObjectIdentifier
    
    var datetime: Date
    
    var volume: DrinkVolume
    var level: Int
}

enum DrinkVolume: Double, CaseIterable {
    case shot = 3
    case wine = 10
    case beer = 25
    case winebottle = 75
    case liter = 100
    case cubitainer = 500
    case barrel = 1600
}
