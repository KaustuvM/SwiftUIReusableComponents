//
//  RootView.swift
//  ReusableSwiftUIComponents
//
//  Created by Kaustuv Mukherjee on 12/11/21.
//

import SwiftUI

struct RootView: View {
    
    @State var isShowingSettings: Bool = false
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<appState.templateData.count) { count in
                    RowView(rowIndex: count)
                }
            }
            .navigationTitle("Components")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
        .preferredColorScheme(.dark)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(AppState())
        
    }
}
