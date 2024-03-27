//
//  ProfileView.swift
//  Drunkard
//
//  Created by da silveira lucas on 06/03/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var profileViewModel: ProfileViewModel

    var body: some View {
        
        VStack{
            Text("My Profile").font(.title)
            
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            TextField("Entrez votre nom", text: $profileViewModel.profile.nom)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    
            
            Spacer()

            
            HStack{
                Text("Age :")
                Picker("Age ", selection: $profileViewModel.profile.age){
                    ForEach(16...100, id: \.self){ age in
                        Text("\(age) ans")
                    }
                }.accentColor(.black)
                
            }.frame(maxWidth: .infinity)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1)
                    )
            
            HStack{
                Text("Taille : ")
                Picker("Taille ", selection: $profileViewModel.profile.taille){
                    ForEach(140...220, id: \.self){ taille in
                        Text("\(taille) cm")
                    }
                }.accentColor(.black)
                
            }.frame(maxWidth: .infinity)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1)
                    )
            
            HStack{
                Text("Poids : ")
                Picker("Poids ", selection: $profileViewModel.profile.poids){
                    ForEach(40...250, id: \.self){ poids in
                        Text("\(poids) kg")
                    }
                }.accentColor(.black)
                
            }.frame(maxWidth: .infinity)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1)
                    )
                
            HStack{
                Text("Genre :")
                Picker("Genre", selection: $profileViewModel.profile.genre) {
                    ForEach(Gender.allCases, id: \.self) { gender in
                        Text(gender.rawValue).tag(gender.hashValue)
                    }
                }.accentColor(.black)
                
            }.frame(maxWidth: .infinity)
                .background(.ultraThickMaterial)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 4)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1)
                    )
            
            
            Spacer()

            
        }
        .scaledToFit()
        .frame(maxWidth: .infinity)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(ProfileViewModel())
    }
}
