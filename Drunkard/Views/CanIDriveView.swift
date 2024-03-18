//
//  CanIDriveView.swift
//  Drunkard
//
//  Created by boschi nathan on 13/03/2024.
//

import SwiftUI
import Charts

func date(year: Int, month: Int, day: Int = 1, hour: Int = 0, minutes: Int = 0, seconds: Int = 0) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day, hour: hour, minute: minutes, second: seconds)) ?? Date()
}

struct CanIDriveView: View {
    
    private var linePoints: [Releve] = [
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 10), y: 1.2),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 11), y: 1.1),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 12), y: 1.2),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 13), y: 0.91),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 14), y: 0.33),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 15), y: 0.43),
        Releve(x: date(year: 2023, month: 10, day: 2, hour: 16), y: 0.02),
    ]
    
    var body: some View {
        VStack {
            Text("My alcohol level").font(.title)
            HStack{
                Text("1,2").bold()
                Text("g/l")
            }
            .font(.title2)
            .foregroundColor(.red)
            
            Spacer()
            
            Chart {
                ForEach(linePoints) { point in
                    Plot {
                        LineMark(
                            x: .value("Time", point.x),
                            y: .value("Level", point.y)
                        )
                        PointMark(x: .value("Time", point.x), y: .value("Level", point.y))
                    }
                }
                RuleMark(y: .value("Driving legal level", 0.5)).foregroundStyle(.red).blur(radius: 2)
            }.frame(maxHeight: 200).padding(.horizontal, 30)
            
            Spacer()
            
            Text("Do not drive !")
                .foregroundColor(.white)
                .bold()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.red)
                .foregroundColor(.white)
                .padding(.bottom, 20)
            
            Text("Attendez 13h45").font(.title3).bold()
            
            Spacer()
            
        }
    }
}

struct Releve: Identifiable {
    var id = UUID()
    var x: Date
    var y: Double
}



struct CanIDriveView_Previews: PreviewProvider {
    static var previews: some View {
        CanIDriveView()
    }
}
