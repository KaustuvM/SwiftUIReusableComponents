//
//  HScrollWrapperItemView.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

struct HScrollWrapperItemView: View {
    
    @EnvironmentObject var appState: AppState
    var templateIndex: Int
    var itemIndex: Int
    
    @State private var width: Double = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack {
            
            switch appState.templateData[templateIndex].hScrollItems[itemIndex].viewType {
            case .SLIDER_BUTTON_STYLE_ONE:
                SliderButtonStyleOne(color_1: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].hScrollItems[itemIndex].isSoundOn)
                    .padding(.top)
            case .SLIDER_BUTTON_STYLE_TWO:
                SliderButtonStyleTwo(color_1: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].hScrollItems[itemIndex].isSoundOn)
            case .SLIDER_BUTTON_STYLE_THREE:
                SliderButtonStyleThree(color_1: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].hScrollItems[itemIndex].isSoundOn)
            default:
                ZStack {
                    Text("Nothing to display...")
                }
            }
            
            
            HStack {
                VStack(alignment: .leading) {
                    if appState
                        .templateData[templateIndex]
                        .vScrollItems[itemIndex]
                        .displayColorOptions {
                        VStack {
                            ColorPicker("COLOR-1", selection: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[0])
                                .font(.headline)
                                .foregroundColor(.secondary)
                            ColorPicker("COLOR-2", selection: $appState.templateData[templateIndex].hScrollItems[itemIndex].gradientColor[1])
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.top, 30)
                        
                    }
                    
                    if appState
                        .templateData[templateIndex]
                        .hScrollItems[itemIndex]
                        .displaySoundOption {
                        VStack {
                            Toggle(isOn: $appState.templateData[templateIndex].hScrollItems[itemIndex].isSoundOn) {
                                Text("Notification Bell")
                            }
                            .font(.headline)
                            .foregroundColor(.secondary)
                        }
                    }
                    
                    Text(appState.templateData[templateIndex].hScrollItems[itemIndex].description)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("File Name: \(appState.templateData[templateIndex].hScrollItems[itemIndex].fileName)")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    Text("Developed By \(appState.templateData[templateIndex].hScrollItems[itemIndex].developer)".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            .padding()
        }
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.secondary, lineWidth: 1)
        )
        .frame(width: width)
    }
}

struct HScrollWrapperItemView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollWrapperItemView(templateIndex: 1, itemIndex: 0)
            .environmentObject(AppState())
    }
}
