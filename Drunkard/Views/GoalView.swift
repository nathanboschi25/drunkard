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
            HStack{
                VStack{
                    Text("Verre Max")
                    Text("6").font(.title)
                }
                
                VStack{
                    Text("Taux Max")
                    Text("4.2 g/L").font(.title)
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
