//
//  SliderButtonStyleThree.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/20/21.
//

import SwiftUI

// Used to regulate the width (inversely proportional)
fileprivate var konst1 = 200.0
// Used to regulate the height (directly proportional)
fileprivate var konst2 = 30.0
// Used to regulate slider movement (slow/fast - inversely proportional)
fileprivate var duration: CGFloat = 1.0

// Do not change anything below
fileprivate var rowWidth: Double = UIScreen.main.bounds.width - konst1

struct SliderButtonStyleThree: View {@Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State private var buttonOffset: CGFloat = 0
    
    var body: some View {
        ZStack {
            Capsule()
                .stroke(LinearGradient(gradient: Gradient(colors: [color_1, color_2]), startPoint: .leading, endPoint: .trailing), lineWidth: 1)
            Capsule()
                .stroke(color_1, lineWidth: 1)
                .padding(konst2/2)
            
            HStack {
                ZStack {
                    Circle()
                        .fill(
                            RadialGradient(gradient: Gradient(colors: [color_2, color_1]), center: .center, startRadius: 1.0, endRadius: konst2*2)
                        )
                        .padding(konst2/4)
                    Image(systemName: "chevron.right.2")
                        .font(.system(size: konst2/2, weight: .bold))
                }
                .frame(width: konst2*2, height: konst2*2, alignment: .center)
                .offset(x: buttonOffset)
                .gesture(
                    DragGesture()
                        .onChanged() { gesture in
                            if gesture.translation.width > 0 && buttonOffset <= rowWidth - konst2*2 {
                                buttonOffset = gesture.translation.width
                            }
                        }
                        .onEnded() { _ in
                            withAnimation(.easeOut(duration: 1.0)) {
                                if buttonOffset + konst2/2 > rowWidth/2 {
                                    buttonOffset = rowWidth - konst2*2
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
        .frame(width: rowWidth, height: konst2*2, alignment: .center)
    }
}

struct SliderButtonStyleThree_Previews: PreviewProvider {
    static var previews: some View {
        SliderButtonStyleThree(color_1: .constant(Color("Light_5")), color_2: .constant(Color("Dark_5")), isSoundOn: .constant(false))
            .preferredColorScheme(.dark)
    }
}
