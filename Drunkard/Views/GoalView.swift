//
//  GoalView.swift
//  Drunkard
//
//  Created by da silveira lucas on 13/03/2024.
//

import SwiftUI

struct GoalView: View {
    var body: some View {
        VStack{
            HStack(spacing: 80){
                VStack(spacing:20){
                    Text("Verres Max").font(.title3)
                    Text("6").font(.title)
                    
                    Button {
                        print("Edit verre goal")
                    } label: {
                        Text("Edit")
                    }
                    .frame(height: 30)
                    .frame(maxWidth: 100)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                }
                
                VStack(spacing:20){
                    Text("Taux Max").font(.title3)
                    Text("4.2 g/L").font(.title)
                    
                    Button {
                        print("Edit taux goal")
                    } label: {
                        Text("Edit")
                    }
                    .frame(height: 30)
                    .frame(maxWidth: 100)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
        }.scaledToFit()
            .frame(maxWidth: .infinity)
            .background(.gray)
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
