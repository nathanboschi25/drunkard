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
    
    let genders = ["Male", "Female", "Autre"]
    
    var body: some View {
        
        VStack{
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            HStack{
                Text("Age :")
            }
            
            HStack{
                Text("Gender :")
                Picker("Select a gender", selection: $selection) {
                                ForEach(genders, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(.menu)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
