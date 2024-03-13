//
//  ProfileView.swift
//  Drunkard
//
//  Created by da silveira lucas on 06/03/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State var FieldText: String = ""
    @State private var selection = ""
    @State private var age: Int = 1
    @State private var taille: Int = 1
    @State private var poids: Int = 1
    
    let genders = ["Male", "Female", "Autre"]
    
    var body: some View {
        
        VStack{
            Spacer()
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            Spacer()
            
            HStack{
                Text("Age : ")
                Picker("Age ", selection: $age){
                    ForEach(16...100, id: \.self){ age in
                        Text("\(age) ans")
                    }
                }
            }
            
            HStack{
                Text("Taille : ")
                Picker("Taille ", selection: $taille){
                    ForEach(140...220, id: \.self){ taille in
                        Text("\(taille) cm")
                    }
                }
            }
            
            HStack{
                Text("Poids : ")
                Picker("Poids ", selection: $poids){
                    ForEach(40...250, id: \.self){ poids in
                        Text("\(poids) kg")
                    }
                }
            }
            
            HStack{
                Text("Gender :")
                Picker("Select a gender", selection: $selection) {
                                ForEach(genders, id: \.self) {
                                    Text($0)
                                }
                            }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Save")
            }.buttonStyle(.borderedProminent)

            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
