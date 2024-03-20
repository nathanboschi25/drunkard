//
//  Drink.swift
//  Drunkard
//
//  Created by boschi nathan on 20/03/2024.
//

import Foundation

enum DrinkVolume: Double, CaseIterable {
    case shot = 3
    case wine = 10
    case beer = 25
    case winebottle = 75
    case liter = 100
    case cubitainer = 500
    case barrel = 1600
}


struct Drink: Identifiable {
    var id = UUID()
    var dateTime: Date
    var vol: DrinkVolume
    var level: Double
}
