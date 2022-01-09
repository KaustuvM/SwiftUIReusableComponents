//
//  WrapperItemView.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/24/21.
//

import SwiftUI

struct WrapperItemView: View {
    @EnvironmentObject var appState: AppState
    var templateIndex: Int
    
    var body: some View {
        
        VStack {
            
            switch appState.templateData[templateIndex].item.viewType {
            case .PAGE_CONTROL_STYLE_ONE:
                PageControlStyleOne(isSoundOn: $appState.templateData[templateIndex].item.isSoundOn)
            default:
                ZStack {
                    Text("Nothing to display...")
                }
            }
            
            
            HStack {
                VStack(alignment: .leading) {
                    if appState
                        .templateData[templateIndex]
                        .item
                        .displayColorOptions {
                        VStack {
                            ColorPicker("COLOR-1", selection: $appState.templateData[templateIndex].item.gradientColor[0])
                                .font(.headline)
                                .foregroundColor(.secondary)
                            ColorPicker("COLOR-2", selection: $appState.templateData[templateIndex].item.gradientColor[1])
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.top, 30)
                    }
                    
                    if appState
                        .templateData[templateIndex]
                        .item
                        .displaySoundOption {
                        VStack {
                            Toggle(isOn: $appState.templateData[templateIndex].item.isSoundOn) {
                                Text("Notification Bell")
                            }
                            .font(.headline)
                            .foregroundColor(.secondary)
                        }
                    }
                    
                    Text(appState.templateData[templateIndex].item.description)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("File Name: \(appState.templateData[templateIndex].item.fileName)")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    Text("Developed By \(appState.templateData[templateIndex].item.developer)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.secondary, lineWidth: 1)
        )
        .padding(.horizontal, 5)
    }
}

struct WrapperItemView_Previews: PreviewProvider {
    static var previews: some View {
        WrapperItemView(templateIndex: 1)
            .environmentObject(AppState())
    }
}
