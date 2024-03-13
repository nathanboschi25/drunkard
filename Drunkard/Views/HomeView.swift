import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack{
                HStack {
                    Text("Bonjour,")
                        .font(.title)
                    Text("Tom")
                        .font(.title)
                        .bold()
                }
            }
            
            Spacer()
            
            Image(uiImage: UIImage(named: "WineGlass")!)
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
            
            Spacer()

            HStack(alignment: .firstTextBaseline) {
                Text("5").font(.title).bold()
                Text("verres bus aujourd'hui")
            }

            VStack {
                Text("82%").font(.largeTitle).bold()
                Text("de votre limite quotidienne")
            }.padding(.top, 5)

            Spacer()

            Button {
                print("Ajouter un verre")
            } label: {
                HStack {
                    Text("Ajouter un verre")
                    Image(systemName: "wineglass")
                }
                .frame(height: 55)
                .frame(maxWidth: 180)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            Spacer()
        }
    
    }
}


struct HomeView_Preview: PreviewProvider
{
    static var previews: some View{
        HomeView()
    }
}
