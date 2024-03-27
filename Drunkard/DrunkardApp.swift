//
//  DrunkardApp.swift
//  Drunkarduhi
//
//  Created by boschi nathan on 06/03/2024.
//

import SwiftUI

@main
struct DrunkardApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ProfileViewModel())
                .environmentObject(DrinkViewModel())
        }
    }
}
