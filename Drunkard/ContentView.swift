//
//  ContentView.swift
//  Drunkard
//
//  Created by boschi nathan on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            GoalView()
                .tabItem {
                    Label("My Goal", systemImage: "star.square.fill")
                }
            CanIDriveView()
                .tabItem {
                    Label("Can I drive ?", systemImage: "steeringwheel")
                }
                .badge("!")
        }
    }
 }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ProfileViewModel()).environmentObject(DrinkViewModel())
    }
}
