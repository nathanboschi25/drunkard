//
//  GoalView.swift
//  Drunkard
//
//  Created by da silveira lucas on 13/03/2024.
//

import SwiftUI
import Charts

func date(year: Int, month: Int, day: Int = 1) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? Date()
}

struct GoalView: View {
    
    @EnvironmentObject var profileViewModel: ProfileViewModel

    
    private var linePointsVerre: [VerreMax] = [
        VerreMax(x: Date(), y:2),
    ]
    
    private var linePointsTaux: [TauxMax] = [
        TauxMax(x: date(year: 2023, month: 10, day: 2), y: 1.25),
        TauxMax(x: date(year: 2023, month: 10, day: 3), y: 1.0),
        TauxMax(x: date(year: 2023, month: 10, day: 4), y: 2.5),
        TauxMax(x: date(year: 2023, month: 10, day: 5), y: 3),
        TauxMax(x: date(year: 2023, month: 10, day: 6), y: 1.75),
        TauxMax(x: date(year: 2023, month: 10, day: 7), y: 2.0),
        TauxMax(x: date(year: 2023, month: 10, day: 8), y: 1.5),
    ]
    
    var body: some View {
        NavigationView(){
            VStack(spacing:100){
                Text("My Goal").font(.title)
                HStack(spacing: 80){
                    VStack(spacing:20){
                        Text("Glass Max")
                        Text(" \(profileViewModel.profile.drinksLimit)").font(.title)
                        
                        NavigationLink {
                            EditGoalGlassView()
                        } label: {
                            Text("Edit")
                        }
                        .frame(height: 30)
                        .frame(maxWidth: 100)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                    }.frame(maxWidth: 120, maxHeight: 150)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                    
                    VStack(spacing:20){
                        Text("Level Max")
                        Text(String(format: "%.2f g/L", profileViewModel.profile.levelLimit)).font(.title)
                        
                        NavigationLink {
                            EditGoalLevelView()
                        } label: {
                            Text("Edit")
                        }
                        .frame(height: 30)
                        .frame(maxWidth: 100)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                    }.frame(maxWidth: 120, maxHeight: 150)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                    
                }
                
                TabView{
                    Chart {
                        ForEach(linePointsVerre) { point in
                            Plot {
                                LineMark(
                                    x: .value("Date", point.x),
                                    y: .value("Level", point.y)
                                )
                                PointMark(x: .value("Date", point.x), y: .value("Level", point.y))
                            }
                        }
                        RuleMark(y: .value("Verre max", 6)).foregroundStyle(.red).blur(radius: 2)
                    }.frame(maxHeight: 160).padding(.horizontal, 30)
                    
                    Chart {
                        ForEach(linePointsTaux) { point in
                            Plot {
                                LineMark(
                                    x: .value("Date", point.x),
                                    y: .value("Level", point.y)
                                )
                                PointMark(x: .value("Date", point.x), y: .value("Level", point.y))
                            }
                        }
                        RuleMark(y: .value("Taux max", 1.5)).foregroundStyle(.red).blur(radius: 2)
                    }.frame(maxHeight: 160).padding(.horizontal, 30)
                    
                }.tabViewStyle(.page)
                
            }.scaledToFit()
                .frame(maxWidth: .infinity)
            
        }
    }
}

struct VerreMax: Identifiable {
    var id = UUID()
    var x: Date
    var y: Double
}

struct TauxMax: Identifiable {
    var id = UUID()
    var x: Date
    var y: Double
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView().environmentObject(ProfileViewModel())
    }
}
