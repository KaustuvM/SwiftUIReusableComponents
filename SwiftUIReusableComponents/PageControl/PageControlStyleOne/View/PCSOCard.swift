//
//  PCSOCard.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/24/21.
//

import SwiftUI

struct PCSOCard: View {
    
    var itemIndex: Int
    @EnvironmentObject var pcsoState: PCSOState
    @Binding var isSoundOn: Bool
    @State var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                
                Image(pcsoState.pcsoData[itemIndex].image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.1)
                
                Text(pcsoState.pcsoData[itemIndex].title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(pcsoState.pcsoData[itemIndex].headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                PCSOButton(isSoundOn: $isSoundOn)
            }
        }
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .onDisappear() {
            isAnimating = false
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: pcsoState.pcsoData[itemIndex].gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct PCSOCard_Previews: PreviewProvider {
    static var previews: some View {
        PCSOCard(itemIndex: 10, isSoundOn: .constant(false))
            .environmentObject(PCSOState())
    }
}
