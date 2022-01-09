//
//  TemplateModel.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/19/21.
//

import Foundation
import SwiftUI

enum ViewType {
    case NONE
    case HSCROLL
    case VSCROLL
    case SINGLE
    case SLIDER_BUTTON_STYLE_ONE
    case SLIDER_BUTTON_STYLE_TWO
    case SLIDER_BUTTON_STYLE_THREE
    case CAPSULE_BUTTON_STYLE_ONE
    case CAPSULE_BUTTON_STYLE_TWO
    case PAGE_CONTROL_STYLE_ONE
    case ACTIITY_INDICATOR_STYLE_ONE
    case ACTIITY_INDICATOR_STYLE_TWO
    case ACTIITY_INDICATOR_STYLE_THREE
    case ACTIITY_INDICATOR_STYLE_FOUR
    case ACTIITY_INDICATOR_STYLE_FIVE
    case ACTIITY_INDICATOR_STYLE_SIX
}

struct ItemModel {
    var description: String = ""
    var fileName: String = ""
    var developer: String = ""
    var displayColorOptions: Bool = false
    var displaySoundOption: Bool = false
    var isSoundOn: Bool = false
    var gradientColor: [Color] = []
    var viewType: ViewType = .NONE
}

struct TemplateModel {
    var image: String = ""
    var title: String = ""
    var caption: String = ""
    var colors: [Color] = []
    var navigateTo: ViewType = .NONE
    var item: ItemModel = ItemModel()
    var hScrollItems: [ItemModel] = []
    var vScrollItems: [ItemModel] = []
}

