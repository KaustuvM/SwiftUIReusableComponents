//
//  AppState.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import SwiftUI

class AppState: ObservableObject {
    
    @Published var templateData: [TemplateModel] = [
        TemplateModel(
            image: "hand.tap.fill",
            title: "Button",
            caption: "Various button styles",
            colors: [Color.gray, Color.black],
            navigateTo: .VSCROLL,
            item: ItemModel(),
            hScrollItems: [],
            vScrollItems: [
                ItemModel(
                    description: "Capsule Button Style One",
                    fileName: "CapsuleButtonStyleOne.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Dark_1"), Color("Dark_1")],
                    viewType: .CAPSULE_BUTTON_STYLE_ONE),
                ItemModel(
                    description: "Capsule Button Style Two",
                    fileName: "CapsuleButtonStyleTwo.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_4"), Color("Dark_4")],
                    viewType: .CAPSULE_BUTTON_STYLE_TWO),
                ItemModel(
                    description: "Slider Button Style One",
                    fileName: "SliderButtonStyleOne.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_2"), Color("Dark_2")],
                    viewType: .SLIDER_BUTTON_STYLE_ONE),
                ItemModel(
                    description: "Slider Button Style One",
                    fileName: "SliderButtonStyleTwo.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_3"), Color("Dark_3")],
                    viewType: .SLIDER_BUTTON_STYLE_TWO),
                ItemModel(
                    description: "Slider Button Style One",
                    fileName: "SliderButtonStyleThree.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_5"), Color("Dark_5")],
                    viewType: .SLIDER_BUTTON_STYLE_THREE)
            ]
        ),
        TemplateModel(
            image: "hand.tap.fill",
            title: "Page Control",
            caption: "Page control style 1",
            colors: [Color.gray, Color.black],
            navigateTo: .SINGLE,
            item: ItemModel(
                description: "Page Control Style One",
                fileName: "PageControlStyleOne.swift",
                developer: "Kaustuv Mukherjee",
                displayColorOptions: false,
                displaySoundOption: true,
                isSoundOn: false,
                gradientColor: [.gray, .black],
                viewType: .PCSO_CONTROL_STYLE_ONE),
            hScrollItems: [],
            vScrollItems: []
        )
    ]
    
}