//
//  ProfileViewModel.swift
//  Drunkard
//
//  Created by boschi nathan on 27/03/2024.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile = Profile(nom: "Tom", taille: 140, poids: 92, genre: .female)
    
    func changeProfileSettings(nom: String, taille: Int, poids: Int, genre: Gender) {
        profile.nom = nom
        profile.taille = taille
        profile.poids = poids
        profile.genre = genre
    }
    
    func changeDrinkLimit(newLimit: Double) {
        profile.levelLimit = newLimit
    }
    
    func changeDrinkNumberLimit(newLimit: Int) {
        profile.drinksLimit = newLimit
    }
}
