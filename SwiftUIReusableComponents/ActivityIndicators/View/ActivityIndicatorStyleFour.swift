//
//  ActivityIndicatorStyleFour.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/8/22.
//

import SwiftUI

fileprivate var duration: CGFloat = 1.0

struct ActivityIndicatorStyleFour: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State var fraction: CGFloat = 0.0
    var progressBarWidth: CGFloat = UIScreen.main.bounds.width - 200
    let timer = Timer.publish(every: duration, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .stroke(.gray.opacity(0.4), style: StrokeStyle(lineWidth: 20))
                
                Circle()
                    .trim(from: 0.0, to: fraction)
                    .stroke(LinearGradient(
                        gradient: Gradient(colors: [color_1, color_2]),
                        startPoint: .leading,
                        endPoint: .trailing),
                            style: StrokeStyle(lineWidth: 20, lineCap: .round))
                    .rotationEffect(.init(degrees: -90))
                    .animation(Animation.linear(duration: duration),
                               value: fraction)
                
                Text("\(fraction*100, specifier: "%.0f")%")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .fontWeight(.heavy)
                    .gradientForeground(colors: [color_1, color_2])
            }
            .frame(width: 150, height: 150, alignment: .center)
        }
        .frame(width: progressBarWidth)
        .padding(.top, 40)
        .onReceive(timer) { time in
            if fraction < 1.0 {
                fraction += 0.05
            } else {
                if isSoundOn {
                    playSound(sound: "success", type: "m4a")
                }
                fraction = 0
            }
        }
    }
}

struct ActivityIndicatorStyleFour_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorStyleFour(color_1: .constant(Color("Light_1")), color_2: .constant(Color("Dark_1")), isSoundOn: .constant(false))
    }
}
