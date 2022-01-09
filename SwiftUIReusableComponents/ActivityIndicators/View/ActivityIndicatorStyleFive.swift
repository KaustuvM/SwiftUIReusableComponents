//
//  ActivityIndicatorStyleFive.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/8/22.
//

import SwiftUI

fileprivate var duration: CGFloat = 6

struct ActivityIndicatorStyleFive: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    var progressBarWidth: CGFloat = UIScreen.main.bounds.width - 200
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            ZStack {
                
                Circle()
                    .trim(from: 0.0, to: 0.8)
                    .stroke(LinearGradient(
                        gradient: Gradient(colors: [color_1, color_2]),
                        startPoint: .leading,
                        endPoint: .trailing),
                            style: StrokeStyle(lineWidth: 40, lineCap: .round))
                    .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                    .animation(Animation.linear(duration: duration)
                                .repeatForever(autoreverses: false),
                               value: isAnimating)
            }
            .frame(width: 150, height: 150, alignment: .center)
        }
        .frame(width: progressBarWidth)
        .padding(.top, 40)
        .onAppear() {
            self.isAnimating = true
        }
    }
}

struct ActivityIndicatorStyleFive_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorStyleFive(color_1: .constant(Color("Light_7")), color_2: .constant(Color("Dark_7")), isSoundOn: .constant(false))
    }
}
