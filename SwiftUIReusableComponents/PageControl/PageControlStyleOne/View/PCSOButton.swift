//
//  PCSOButton.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/24/21.
//

import SwiftUI

struct PCSOButton: View {
    
    @Binding var isSoundOn: Bool
    
    var body: some View {
        Button(action: {
            if isSoundOn {
                playSound(sound: "success", type: "m4a")
            }
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        })
            .accentColor(.white)
    }
}

struct PCSOButton_Previews: PreviewProvider {
    static var previews: some View {
        PCSOButton(isSoundOn: .constant(false))
    }
}
