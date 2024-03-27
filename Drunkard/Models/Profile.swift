//
//  Profile.swift
//  Drunkard
//
//  Created by boschi nathan on 27/03/2024.
//

import Foundation

enum Gender: String, CaseIterable {
    case female = "Femme"
    case male = "Homme"
    case other = "Autre"
}

struct Profile: Identifiable {
    var id = UUID()
    var nom: String
    var taille: Int
    var poids: Int
    var genre: Gender
    
    var levelLimit: Double = 1.2
    var drinksLimit: Int = 3
}
