//
//  EditGoalLevelView.swift
//  Drunkard
//
//  Created by da silveira lucas on 20/03/2024.
//

import SwiftUI

struct EditGoalLevelView: View {
    
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
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
                    Text(String(format: "%.2f g/L", profileViewModel.profile.levelLimit))
                        .font(.title)

                    
                    HStack {
                        Button(action: {
                            if profileViewModel.profile.levelLimit > 0 {
                                profileViewModel.profile.levelLimit -= 0.25
                            }
                        }) {
                            Image(systemName: "minus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(profileViewModel.profile.levelLimit == 0)
                        
                        
                        Button(action: {
                            if profileViewModel.profile.levelLimit < 5 {
                                profileViewModel.profile.levelLimit += 0.25
                            }
                        }) {
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .disabled(profileViewModel.profile.levelLimit == 5)
                    }
                    .padding()
                }
                .background(Color.white)
                .edgesIgnoringSafeArea(.all)
                
            }
        }
    }
}

struct EditGoalLevelView_Previews: PreviewProvider {
    static var previews: some View {
        EditGoalLevelView().environmentObject(ProfileViewModel())
    }
}
