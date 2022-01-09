//
//  ActivityIndicatorStyleThree.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/8/22.
//

import SwiftUI
import Combine

fileprivate var duration: CGFloat = 0.30
fileprivate var repeatPatternAfter: Int = 6
fileprivate var noOfElements: Int = repeatPatternAfter*2 + 1
fileprivate let delta: CGFloat = 7.5


struct ActivityIndicatorStyleThree: View {
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
            ZStack {
                VStack {
                    HStack {
                        ForEach(0..<noOfElements, id: \.self) { index in
                            Rectangle()
                                .fill(index%2 == 0 ? color_1 : color_2)
                                .frame(width: width, height: height, alignment: .leading)
                                .cornerRadius(2)
                                .offset(y: isAnimating ? getOffsetY1(index: index) : getOffsetY2(index: index))
                                .animation(
                                    Animation
                                        .easeOut(duration: 1)
                                        .repeatForever()
                                , value: isAnimating)
                        }
                    }
                    
                    Text("Loading...")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .fontWeight(.heavy)
                        .gradientForeground(colors: [color_1, color_2])
                        .padding(.top, 20)
                }
            }
        }
        .frame(width: progressBarWidth)
        .padding(.top, 50)
        .onAppear() {
            self.isAnimating = true
        }
    }
    
    func getOffsetY1(index: Int) -> CGFloat {
        
        var offset: CGFloat = 0
        var localIndex = 0
        let segment = index/repeatPatternAfter
        localIndex = index - segment*repeatPatternAfter
        let isNegative = segment%2 == 0 ? -1.0 : 1.0

        switch localIndex {
        case 0:
            offset = isNegative*delta*0
        case 1,5:
            offset = isNegative*delta
        case 2,4:
            offset = isNegative*delta*2
        case 3:
            offset = isNegative*delta*3
        default:
            offset = isNegative*delta*3
        }
        
        return offset
    }
    
    func getOffsetY2(index: Int) -> CGFloat {
        
        var offset: CGFloat = 0
        var localIndex = 0
        let segment = index/repeatPatternAfter
        localIndex = index - segment*repeatPatternAfter
        let isNegative = segment%2 == 0 ? 1.0 : -1.0
        

        switch localIndex {
        case 0:
            offset = isNegative*delta*0
        case 1,5:
            offset = isNegative*delta
        case 2,4:
            offset = isNegative*delta*2
        case 3:
            offset = isNegative*delta*3
        default:
            offset = isNegative*delta*3
        }
        
        return offset
    }
}

struct ActivityIndicatorStyleThree_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorStyleThree(color_1: .constant(Color("Light_1")), color_2: .constant(Color("Dark_1")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
