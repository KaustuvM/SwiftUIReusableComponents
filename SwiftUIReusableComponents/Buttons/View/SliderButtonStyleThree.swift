//
//  SliderButtonStyleThree.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/20/21.
//

import SwiftUI

struct SliderButtonStyleThree: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State private var rowWidth: Double = UIScreen.main.bounds.width - 40
    @State private var buttonOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Capsule()
                .stroke(color_2, lineWidth: 8)
            Capsule()
                .stroke(color_1, lineWidth: 2)
                .padding(20)
            
            HStack {
                ZStack {
                    Circle()
                        .fill(color_2)
                        .padding(8)
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: 24, weight: .bold))
                }
                .frame(width: 80, height: 80, alignment: .center)
                .offset(x: buttonOffset)
                .gesture(
                    DragGesture()
                        .onChanged() { gesture in
                            if gesture.translation.width > 0 && buttonOffset <= rowWidth - 20 {
                                buttonOffset = gesture.translation.width
                            }
                        }
                        .onEnded() { _ in
                            withAnimation(.easeOut(duration: 1.0)) {
                                if buttonOffset > rowWidth/2 {
                                    buttonOffset = rowWidth - 80
                                    if isSoundOn {
                                        playSound(sound: "success", type: "m4a")
                                    }
                                } else {
                                    buttonOffset = 0
                                }
                            }
                        }
                )
                Spacer()
            }
        }
        .frame(width: rowWidth, height: 80, alignment: .center)
        .padding()
    }
}

struct SliderButtonStyleThree_Previews: PreviewProvider {
    static var previews: some View {
        SliderButtonStyleThree(color_1: .constant(Color("Light_5")), color_2: .constant(Color("Dark_5")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
