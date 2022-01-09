//
//  ActivityIndicatorStyleTwo.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/8/22.
//

import SwiftUI
import Combine

fileprivate var duration: CGFloat = 0.30
fileprivate var noOfElements: Int = 15

struct ActivityIndicatorStyleTwo: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    var progressBarWidth: CGFloat = UIScreen.main.bounds.width - 200
    var width: CGFloat {
        progressBarWidth/CGFloat(noOfElements)
    }
    var height: CGFloat {
        width
    }
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            HStack {
                ForEach(0..<noOfElements, id: \.self) { index in
                    Rectangle()
                        .fill(index%2 == 0 ? color_1 : color_2)
                        .frame(width: width, height: height, alignment: .leading)
                        .cornerRadius(2)
                        .offset(y: isAnimating ? (index%2 == 0 ? 15 : -15) : (index%2 == 0 ? -15 : 15))
                        .animation(
                            Animation
                                .easeOut(duration: 1)
                                .repeatForever()
                        , value: isAnimating)
                }
            }
        }
        .frame(width: progressBarWidth)
        .padding(.top, 40)
        .onAppear() {
            self.isAnimating = true
        }
    }
}

struct ActivityIndicatorStyleTwo_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorStyleTwo(color_1: .constant(Color("Light_1")), color_2: .constant(Color("Dark_1")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
