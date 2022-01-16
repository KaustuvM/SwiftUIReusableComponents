//
//  CircleButtonStyleOne.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/15/22.
//

import SwiftUI

struct CircleButtonStyleOne: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State private var radius: Double = 100
    
    var body: some View {
        ZStack {
            Circle().strokeBorder(RadialGradient(gradient: Gradient(colors: [color_1, color_2]), center: .center, startRadius: 1.0, endRadius: radius), lineWidth: 10)
            
            Button(action: {
                if isSoundOn {
                    playSound(sound: "success", type: "m4a")
                }
            }, label: {
                HStack(spacing: 8) {
                    Text("Start")
                        .foregroundColor(.black)
                        .font(.system(size: 24, weight: .bold))
                }
                .frame(width: radius, height: radius, alignment: .center)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    ZStack {
                        Circle()
                            .fill(
                                RadialGradient(gradient: Gradient(colors: [color_1, color_2]), center: .center, startRadius: 1.0, endRadius: radius)
                            )
                            .padding(11)
                    }
                )
            })
        }
        .frame(width: radius, height: radius, alignment: .center)
            .padding(.top, 30)
    }
}

struct CircleButtonStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonStyleOne(color_1: .constant(Color("Light_14")), color_2: .constant(.black), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
