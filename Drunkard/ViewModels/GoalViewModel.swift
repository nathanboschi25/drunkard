//
//  GoalViewModel.swift
//  Drunkard
//
//  Created by da silveira lucas on 27/03/2024.
//

import Foundation

class GoalViewModel: ObservableObject {
    @Published var goal: Goal
    
    init(viewModel: GoalViewModel) {
        self.goal = Goal(maxGlass: 6, maxLevel: 1.5)
    }
    
    func updateMaxGlass(_ value: Int) {
        self.goal.maxGlass = value
    }
    
    func updateMaxLevel(_ value: Double) {
        self.goal.maxLevel = value
    }
}
