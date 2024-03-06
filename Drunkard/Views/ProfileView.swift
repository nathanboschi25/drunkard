//
//  ProfileView.swift
//  Drunkard
//
//  Created by da silveira lucas on 06/03/2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State var FieldText: String = ""
    
    var body: some View {
        
        VStack{
            Image(systemName: "person.crop.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            
            HStack{
                Text("Age :")
                TextField("",text: $FieldText)
                    .padding()
                    .frame(width: 100, height: 45)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
