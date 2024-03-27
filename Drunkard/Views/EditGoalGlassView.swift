//
//  EditGoalGlassView.swift
//  Drunkard
//
//  Created by da silveira lucas on 20/03/2024.
//

import SwiftUI

struct EditGoalGlassView: View {
    
    @State private var numberGlass: Int = 0
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        NavigationView(){
            VStack(spacing:100){
                Text("Edit Glasses")
                    .font(.title)
                
                Image(uiImage: UIImage(named: "EditGlass")!)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fit)
                
                VStack {
                    Text(" \(numberGlass)")
                        .font(.title)

                    
                    HStack {
                        Button(action: {
                            if numberGlass > 0 {
                                numberGlass -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(numberGlass == 0)
                        
                        
                        Button(action: {
                            numberGlass += 1
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
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

struct EditGoalGlassView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalGlassView()
    }
}
