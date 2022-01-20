//
//  GroupControlStyleOne.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/19/22.
//

import SwiftUI

struct GroupControlStyleOne: View {
    
    @EnvironmentObject var gcState: GCState
    @Binding var color_1: Color
    @Binding var color_2: Color
    @Binding var isSoundOn: Bool
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<gcState.gcData.keys.count, id: \.self) { index in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(gcState.gcData.keys[index])
                        }
                        .foregroundColor(color_1)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(gcState.gcData.values[index])
                            .foregroundColor(color_2)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
        .accentColor(color_1)
    }
}

struct GroupControlStyleOne_Previews: PreviewProvider {
    static var previews: some View {
        GroupControlStyleOne(color_1: .constant(Color("Dark_7")), color_2: .constant(Color("Light_7")), isSoundOn: .constant(false))
            .environmentObject(GCState())
            .preferredColorScheme(.dark)
    }
}
