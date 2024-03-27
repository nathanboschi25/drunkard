//
//  DrinkViewModel.swift
//  Drunkard
//
//  Created by boschi nathan on 20/03/2024.
//

import Foundation

class DrinkViewModel: ObservableObject {
    @Published var drinks: [Drink] = []
    
    func addDrink(datetime: Date, vol: DrinkVolume, level: Double) {
        drinks.append(Drink(dateTime: datetime, vol: vol, level: level))
    }
    
    func deleteItem(indexSet: IndexSet) {
        drinks.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        drinks.move(fromOffsets: from, toOffset: to)
    }
    
    func getTodayDrinksCount() -> Int {
        let today = Date()
        return drinks.filter {
            Calendar.current.isDate($0.dateTime, inSameDayAs: today)
        }.count
    }
}
