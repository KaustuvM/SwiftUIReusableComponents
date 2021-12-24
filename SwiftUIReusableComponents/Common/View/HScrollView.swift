//
//  HScrollView.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

struct HScrollView: View {
    
    @EnvironmentObject var appState: AppState
    var templateIndex: Int
    
    var body: some View {
        ZStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<appState.templateData[templateIndex].hScrollItems.count) { item in
                        HScrollWrapperItemView(templateIndex: templateIndex, itemIndex: item)
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct HScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollView(templateIndex: 1)
            .environmentObject(AppState())
    }
}
