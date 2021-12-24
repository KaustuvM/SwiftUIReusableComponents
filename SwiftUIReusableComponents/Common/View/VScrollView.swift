//
//  VScrollView.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

struct VScrollView: View {
    
    @EnvironmentObject var appState: AppState
    var templateIndex: Int
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(0..<appState.templateData[templateIndex].vScrollItems.count) { item in
                        VScrollWrapperItemView(templateIndex: templateIndex, itemIndex: item)
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct VScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollView(templateIndex: 0)
            .environmentObject(AppState())
    }
}
