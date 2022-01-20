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
                    viewType: .SLIDER_BUTTON_STYLE_THREE),
                ItemModel(
                    description: "Circle Button Style One",
                    fileName: "CircleButtonStyleThree.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_14"), Color("Dark_14")],
                    viewType: .CIRCLE_BUTTON_STYLE_ONE)
            ]
        ),
        TemplateModel(
            image: "tablecells.badge.ellipsis",
            title: "Page Control",
            caption: "Page control style - one",
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
                viewType: .PAGE_CONTROL_STYLE_ONE),
            hScrollItems: [],
            vScrollItems: []
        ),
        TemplateModel(
            image: "hourglass.circle",
            title: "Activity Indicators",
            caption: "Various activity indicator styles",
            colors: [Color.gray, Color.black],
            navigateTo: .VSCROLL,
            item: ItemModel(),
            hScrollItems: [],
            vScrollItems: [
                ItemModel(
                    description: "Activity Indicator Style One",
                    fileName: "ActivityIndicatorStyleOne.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_2"), Color("Dark_2")],
                    viewType: .ACTIITY_INDICATOR_STYLE_ONE),
                ItemModel(
                    description: "Activity Indicator Style Two",
                    fileName: "ActivityIndicatorStyleTwo.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: false,
                    isSoundOn: false,
                    gradientColor: [Color("Light_4"), Color("Dark_4")],
                    viewType: .ACTIITY_INDICATOR_STYLE_TWO),
                ItemModel(
                    description: "Activity Indicator Style Three",
                    fileName: "ActivityIndicatorStyleThree.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: false,
                    isSoundOn: false,
                    gradientColor: [Color("Light_1"), Color("Dark_1")],
                    viewType: .ACTIITY_INDICATOR_STYLE_THREE),
                ItemModel(
                    description: "Activity Indicator Style Four",
                    fileName: "ActivityIndicatorStyleFour.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: true,
                    isSoundOn: false,
                    gradientColor: [Color("Light_2"), Color("Dark_2")],
                    viewType: .ACTIITY_INDICATOR_STYLE_FOUR),
                ItemModel(
                    description: "Activity Indicator Style Five",
                    fileName: "ActivityIndicatorStyleFive.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: false,
                    isSoundOn: false,
                    gradientColor: [Color("Dark_2"), Color("Dark_12")],
                    viewType: .ACTIITY_INDICATOR_STYLE_FIVE),
                ItemModel(
                    description: "Activity Indicator Style Six",
                    fileName: "ActivityIndicatorStyleSix.swift",
                    developer: "Kaustuv Mukherjee",
                    displayColorOptions: true,
                    displaySoundOption: false,
                    isSoundOn: false,
                    gradientColor: [Color("Light_15"), Color("Dark_15")],
                    viewType: .ACTIITY_INDICATOR_STYLE_SIX)
            ]
        ),
        TemplateModel(
            image: "hourglass.circle",
            title: "Group Controls",
            caption: "Various group control styles",
            colors: [Color.gray, Color.black],
            navigateTo: .VSCROLL,
            item: ItemModel(),
            hScrollItems: [],
            vScrollItems: [
                ItemModel(
                description: "Group Control Style One",
                fileName: "GroupControlStyleOne.swift",
                developer: "Kaustuv Mukherjee",
                displayColorOptions: true,
                displaySoundOption: false,
                isSoundOn: false,
                gradientColor: [Color("Light_13"), Color("Light_15")],
                viewType: .GROUP_CONTROL_STYLE_ONE)
            ]
        )
    ]
    
}
