//
//  CapsuleButtonStyleOne.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/23/21.
//

import SwiftUI

struct CapsuleButtonStyleOne: View {
    
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
                Text("Next")
                    .foregroundColor(color_1)
                    .font(.system(size: 24, weight: .bold))
                Image(systemName: "arrow.right.circle")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(color_1)
            }
            .frame(width: rowWidth, height: 40, alignment: .center)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(color_2, lineWidth: 2.50)
            )
        })
            .padding()
            .padding(.top)
    }
}

struct CapsuleButtonStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButtonStyleOne(color_1: .constant(Color("Dark_1")), color_2: .constant(Color("Dark_2")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
