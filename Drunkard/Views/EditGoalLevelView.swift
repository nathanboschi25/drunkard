//
//  EditGoalLevelView.swift
//  Drunkard
//
//  Created by da silveira lucas on 20/03/2024.
//

import SwiftUI

struct EditGoalLevelView: View {
    
    @State private var numberGlass: Double = 0.0
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView(){
            VStack(spacing:100){
                Text("Edit Level")
                    .font(.title)
                
                Image(systemName: "questionmark")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                
                VStack {
                    Text(String(format: "%.2f g/L", numberGlass))
                        .font(.title)

                    
                    HStack {
                        Button(action: {
                            if numberGlass > 0 {
                                numberGlass -= 0.25
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(numberGlass == 0)
                        
                        
                        Button(action: {
                            if numberGlass < 5 {
                                numberGlass += 0.25
                            }
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(numberGlass == 5)
                    }
                    .padding()
                }
                .background(Color.white)
                .edgesIgnoringSafeArea(.all)
                
                Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Edit")
                    }.frame(height: 55)
                    .frame(maxWidth: 180)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.bottom)
            }
        }
    }
}

struct EditGoalLevelView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalLevelView()
    }
}
