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
    
    private var linePoints: [VerreMax] = [
        VerreMax(x: date(year: 2023, month: 10, day: 2), y: 4),
        VerreMax(x: date(year: 2023, month: 10, day: 3), y: 5),
        VerreMax(x: date(year: 2023, month: 10, day: 4), y: 2),
        VerreMax(x: date(year: 2023, month: 10, day: 5), y: 7),
        VerreMax(x: date(year: 2023, month: 10, day: 6), y: 4),
        VerreMax(x: date(year: 2023, month: 10, day: 7), y: 8),
        VerreMax(x: date(year: 2023, month: 10, day: 8), y: 2),
    ]
    
    var body: some View {
        VStack(spacing:100){
            Text("My Goal").font(.title)
            HStack(spacing: 80){
                VStack(spacing:20){
                    Text("Verres Max")
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
                    Text("Taux Max")
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
                        
            TabView{
                Chart {
                    ForEach(linePoints) { point in
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
                Text("AAAAAAA")
                Text("AAAA")
            }.tabViewStyle(.page)

            
            
        }.scaledToFit()
            .frame(maxWidth: .infinity)
            
    }
}

struct VerreMax: Identifiable {
    var id = UUID()
    var x: Date
    var y: Double
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
