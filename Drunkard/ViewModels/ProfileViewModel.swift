//
//  ProfileViewModel.swift
//  Drunkard
//
//  Created by boschi nathan on 27/03/2024.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile = Profile(nom: "Tom", age: 20, taille: 168, poids: 56, genre: .male)
    
    func changeProfileSettings(nom: String, age: Int, taille: Int, poids: Int, genre: Gender) {
        profile.nom = nom
        profile.age = age
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
