//
//  AddDrinkView.swift
//  Drunkard
//
//  Created by boschi nathan on 18/03/2024.
//

import SwiftUI

struct AddDrinkView: View {
    @EnvironmentObject var drinkViewModel: DrinkViewModel
    
    @State private var datetime = Date.now
    @State private var volume: DrinkVolume = .wine
    @State private var level: Double = 12.5
    
    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: "WineGlass")!)
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
            
            Spacer().frame(height: 50)
            
            List {
                DatePicker("Drink hour", selection: $datetime, displayedComponents: .hourAndMinute)
                
                Picker("Drink volume", selection: $volume) {
                    Text("Shot").tag(DrinkVolume.shot)
                    Text("Wine glass").tag(DrinkVolume.wine)
                    Text("Beer 1/2").tag(DrinkVolume.beer)
                    Text("Wine bottle").tag(DrinkVolume.winebottle)
                    Text("Liter bottle").tag(DrinkVolume.liter)
                    Text("Cubitainer").tag(DrinkVolume.cubitainer)
                    Text("Barrel").tag(DrinkVolume.barrel)
                }
                
                VStack {
                    HStack {
                        Text("Drink alcohol level")
                        Spacer()
                        Text("\(level, specifier: "%.1f")°")
                    }
                    Slider(value: $level, in: 0...50, step: 0.5)
                }
            }.listStyle(.plain).scrollDisabled(true)
            Spacer()
            Button() {
                drinkViewModel.addDrink(datetime: datetime, vol: volume, level: level)
            } label: {
                Text("Add drink").frame(height: 45)
                    .frame(maxWidth: 120)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.bottom)
            }
        }
    }
}

struct AddDrinkView_Previews: PreviewProvider {
    static var previews: some View {
        AddDrinkView()
    }
}
