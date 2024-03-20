//
//  Drink.swift
//  Drunkard
//
//  Created by boschi nathan on 20/03/2024.
//

import Foundation

enum DrinkVolume: Double, CaseIterable {
    case shot = 3
    case wineglass = 10
}


struct Drink: Identifiable {
    var id = UUID()
    var dateTime: Date
    var vol: DrinkVolume
    var level: Double
}
