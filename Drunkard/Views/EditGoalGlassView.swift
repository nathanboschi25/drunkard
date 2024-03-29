//
//  EditGoalGlassView.swift
//  Drunkard
//
//  Created by da silveira lucas on 20/03/2024.
//

import SwiftUI

struct EditGoalGlassView: View {
    
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
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
                    Text(" \(profileViewModel.profile.drinksLimit)")
                        .font(.title)

                    
                    HStack {
                        Button(action: {
                            if profileViewModel.profile.drinksLimit > 0 {
                                profileViewModel.profile.drinksLimit -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(profileViewModel.profile.drinksLimit == 0)
                        
                        
                        Button(action: {
                            profileViewModel.profile.drinksLimit += 1
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
                
            }
        }
    }
}

struct EditGoalGlassView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalGlassView().environmentObject(ProfileViewModel())
    }
}
