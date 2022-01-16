//
//  VScrollWrapperItemView.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

struct VScrollWrapperItemView: View {
    
    @EnvironmentObject var appState: AppState
    var templateIndex: Int
    var itemIndex: Int
    
    var body: some View {
        
        VStack {
            
            switch appState.templateData[templateIndex].vScrollItems[itemIndex].viewType {
            case .SLIDER_BUTTON_STYLE_ONE:
                SliderButtonStyleOne(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
                    .padding(.top)
            case .SLIDER_BUTTON_STYLE_TWO:
                SliderButtonStyleTwo(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .SLIDER_BUTTON_STYLE_THREE:
                SliderButtonStyleThree(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .CAPSULE_BUTTON_STYLE_ONE:
                CapsuleButtonStyleOne(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .CAPSULE_BUTTON_STYLE_TWO:
                CapsuleButtonStyleTwo(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .CIRCLE_BUTTON_STYLE_ONE:
                CircleButtonStyleOne(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .ACTIITY_INDICATOR_STYLE_ONE:
                ActivityIndicatorStyleOne(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .ACTIITY_INDICATOR_STYLE_TWO:
                ActivityIndicatorStyleTwo(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .ACTIITY_INDICATOR_STYLE_THREE:
                ActivityIndicatorStyleThree(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .ACTIITY_INDICATOR_STYLE_FOUR:
                ActivityIndicatorStyleFour(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
            case .ACTIITY_INDICATOR_STYLE_FIVE:
                ActivityIndicatorStyleFive(color_1: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0], color_2: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1], isSoundOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn)
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
                            ColorPicker("COLOR-1", selection: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[0])
                                .font(.headline)
                                .foregroundColor(.secondary)
                            ColorPicker("COLOR-2", selection: $appState.templateData[templateIndex].vScrollItems[itemIndex].gradientColor[1])
                                .font(.headline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.top, 30)
                    }
                    
                    if appState
                        .templateData[templateIndex]
                        .vScrollItems[itemIndex]
                        .displaySoundOption {
                        VStack {
                            Toggle(isOn: $appState.templateData[templateIndex].vScrollItems[itemIndex].isSoundOn) {
                                Text("Notification Bell")
                            }
                            .font(.headline)
                            .foregroundColor(.secondary)
                        }
                    }
                    
                    
                    Text(appState.templateData[templateIndex].vScrollItems[itemIndex].description)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("File Name: \(appState.templateData[templateIndex].vScrollItems[itemIndex].fileName)")
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                    Text("Developed By \(appState.templateData[templateIndex].vScrollItems[itemIndex].developer)".uppercased())
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

struct VScrollWrapperItemView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollWrapperItemView(templateIndex: 0, itemIndex: 0)
            .environmentObject(AppState())
    }
}
