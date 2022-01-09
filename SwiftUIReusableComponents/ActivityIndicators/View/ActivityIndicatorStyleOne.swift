//
//  ActivityIndicatorStyleOne.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/8/22.
//

import SwiftUI
import Combine

fileprivate var duration: CGFloat = 0.5

struct ActivityIndicatorStyleOne: View {
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    @State var width: CGFloat = 0
    var height: CGFloat = 10
    @State var progress: CGFloat = 10
    var progressBarWidth: CGFloat = UIScreen.main.bounds.width - 200
    let timer = Timer.publish(every: duration, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ZStack {
                ZStack{
                    Rectangle()
                        .fill(color_2)
                        .frame(width: width, height: height, alignment: .leading)
                        .animation(Animation.linear(duration: duration), value: width)
                }
                .frame(width: progressBarWidth, height: height, alignment: .leading)
                
                ZStack{
                    Rectangle()
                        .fill(color_1)
                        .frame(
                            width: (progressBarWidth - width) > 0 ? progressBarWidth - width : 0,
                            height: height, alignment: .trailing)
                        .animation(Animation.linear(duration: duration), value: width)
                }
                .frame(width: progressBarWidth, height: height, alignment: .trailing)
            }
            .cornerRadius(20)
            .padding(.top, 30)
            .onReceive(timer) { time in
                if width < progressBarWidth {
                    if (width + progress) > progressBarWidth {
                        width = progressBarWidth
                    } else {
                        width += progress
                    }
                } else {
                    if isSoundOn {
                        playSound(sound: "success", type: "m4a")
                    }
                    width = 0
                }
            }
            Text("\((width/progressBarWidth)*100, specifier: "%.0f")%")
                .font(.system(size: 25, weight: .bold, design: .default))
                .fontWeight(.heavy)
                .foregroundColor(.primary)
        }
    }
}

struct ActivityIndicatorStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorStyleOne(color_1: .constant(Color("Light_1")), color_2: .constant(Color("Dark_1")), isSoundOn: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
