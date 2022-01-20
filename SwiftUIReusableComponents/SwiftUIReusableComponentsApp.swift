//
//  SwiftUIReusableComponentsApp.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

@main
struct SwiftUIReusableComponentsApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(AppState())
                .environmentObject(PCSOState())
                .environmentObject(GCState())
        }
    }
}
