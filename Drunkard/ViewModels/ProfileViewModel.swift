//
//  ProfileViewModel.swift
//  Drunkard
//
//  Created by boschi nathan on 27/03/2024.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile = Profile(nom: "Tom", age: 20, taille: 168, poids: 56, genre: .male)
    
}
