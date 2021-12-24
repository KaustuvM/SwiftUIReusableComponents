//
//  CapsuleButtonStyleTwo.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/23/21.
//

import SwiftUI

struct CapsuleButtonStyleTwo: View {
    
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State private var rowWidth: Double = UIScreen.main.bounds.width - 200
    
    var body: some View {
        Button(action: {
            if isSoundOn {
                playSound(sound: "success", type: "m4a")
            }
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                Image(systemName: "arrow.right.circle")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(width: rowWidth, height: 40, alignment: .center)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [color_1, color_2]), startPoint: .leading, endPoint: .trailing)
                    )
            )
        })
            .padding()
            .padding(.top)
    }
}

struct CapsuleButtonStyleTwo_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButtonStyleTwo(color_1: .constant(Color("Light_2")), color_2: .constant(Color("Dark_2")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
