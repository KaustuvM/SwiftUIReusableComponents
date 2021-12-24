//
//  PageControlStyleOne.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/24/21.
//

import SwiftUI

struct PageControlStyleOne: View {
    
    @EnvironmentObject var pcsoState: PCSOState
    @Binding var isSoundOn: Bool
    
    var body: some View {
        TabView {
            ForEach(0..<pcsoState.pcsoData.count) { index in
                PCSOCard(itemIndex: index, isSoundOn: $isSoundOn)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct PageControlStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        PageControlStyleOne(isSoundOn: .constant(false))
            .environmentObject(PCSOState())
            .preferredColorScheme(.dark)
    }
}
