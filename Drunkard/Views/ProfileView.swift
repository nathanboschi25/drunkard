//
//  ProfileView.swift
//  Drunkard
//
//  Created by da silveira lucas on 06/03/2024.
//

import SwiftUI

struct ProfileView: View {
    

    @State private var gender = ""
    @State private var age: Int = 1
    @State private var taille: Int = 1
    @State private var poids: Int = 1
    @State private var name = ""
    
    let genders = ["Male", "Female", "Other"]
    
    var body: some View {
        
        VStack{
            Text("My Profile").font(.title)
            
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            TextField("Entrez votre nom", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.top)
            
            Spacer()

            
            HStack{
                Text("Age :")
                Picker("Age ", selection: $age){
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
                Picker("Taille ", selection: $taille){
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
                Picker("Poids ", selection: $poids){
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
                Text("Gender :")
                Picker("Gender", selection: $gender) {
                    ForEach(genders, id: \.self) {
                        Text($0)
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
            
            Button {
                print("Save Profile")
            } label: {
                Text("Save")
            }
            .frame(height: 40)
            .frame(maxWidth: 180)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            
        }
        .scaledToFit()
        .frame(maxWidth: .infinity)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
