import SwiftUI

struct HomeView: View {
    @EnvironmentObject var drinkViewModel: DrinkViewModel
    @EnvironmentObject var profileViewModel: ProfileViewModel
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Bonjour,")
                        .font(.title)
                    Text("Tom")
                        .font(.title)
                        .bold()
                }
                Spacer()
                
                Image(uiImage: UIImage(named: "WineGlass")!)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fit)
                
                Spacer()

                HStack(alignment: .firstTextBaseline) {
                    Text("\(drinkViewModel.getTodayDrinksCount())").font(.title).bold()
                    Text("verres bus aujourd'hui")
                }

                VStack {
                    Text(String(format: "%.1f", Double(drinkViewModel.getTodayDrinksCount())/Double(profileViewModel.profile.drinksLimit)*100) + " %").font(.largeTitle).bold()
                    Text("de votre limite quotidienne")
                }.padding(.top, 5)

                Spacer()

                NavigationLink {
                    AddDrinkView()
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
                        .padding(.bottom)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button{
                            print("Share")
                        }label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                        
                        NavigationLink {
                            ProfileView()
                        } label: {
                            Image(systemName: "person.crop.circle.fill")
                        }
                    }
                }
            }
        }
    }
}


struct HomeView_Preview: PreviewProvider
{
    static var previews: some View{
        HomeView().environmentObject(DrinkViewModel()).environmentObject(ProfileViewModel())
    }
}
