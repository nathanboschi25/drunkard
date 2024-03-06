import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Bonjour,")
                    .font(.title)
                Text("Tom")
                    .font(.title)
                    .bold()
            }
            
            Spacer()

            HStack(alignment: .firstTextBaseline) {
                Text("5").font(.title).bold()
                Text("verres bus aujourd'hui")
            }

            VStack {
                Text("82%").font(.largeTitle).bold()
                Text("de votre limite quotidienne")
            }

            Spacer()

            Button {
                print("Ajouter un verre")
            } label: {
                HStack {
                    Text("Ajouter un verre")
                    Image(systemName: "wineglass")
                }
                .frame(height: 55)
                .frame(maxWidth: 150)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
    }
}