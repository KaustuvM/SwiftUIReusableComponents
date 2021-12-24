//
//  PCSOState.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 12/24/21.
//

import SwiftUI

class PCSOState: ObservableObject {
    
    @Published var pcsoData: [PCSOModel] = [
        PCSOModel(
            title: "Blueberry",
            headline: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
            image: "blueberry",
            gradientColors: [Color("Light_2"), Color("Dark_2")]
        ),
        PCSOModel(
            title: "Strawberry",
            headline: "Widely appreciated for its characteristic aroma,  red color, juicy texture, and sweetness.",
            image: "strawberry",
            gradientColors: [Color("Light_12"), Color("Dark_12")]
        ),
        PCSOModel(
            title: "Lemon",
            headline: "There's no doubt lemons are delicious, but does adding them to water make you healthier?",
            image: "lemon",
            gradientColors: [Color("Light_6"), Color("Dark_6")]
        ),
        PCSOModel(
            title: "Plum",
            headline: "Plums are a very nutritious fruit. An excellent source of vitamins, minerals, fiber and antioxidants.",
            image: "plum",
            gradientColors: [Color("Light_10"), Color("Dark_10")]
        ),
        PCSOModel(
            title: "Lime",
            headline: "Sour, round, and bright green citrus fruits. Limes are high in vitamin C, antioxidants, and other nutrients.",
            image: "lime",
            gradientColors: [Color("Light_7"), Color("Dark_7")]
        ),
        PCSOModel(
            title: "Pomegranate",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "pomegranate",
            gradientColors: [Color("Light_11"), Color("Dark_11")]
        ),
        PCSOModel(
            title: "Pear",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "pear",
            gradientColors: [Color("Light_9"), Color("Dark_9")]
        ),
        PCSOModel(
            title: "Gooseberry",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "gooseberry",
            gradientColors: [Color("Light_4"), Color("Dark_4")]
        ),
        PCSOModel(
            title: "Mango",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "mango",
            gradientColors: [Color("Light_8"), Color("Dark_8")]
        ),
        PCSOModel(
            title: "Watermelon",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "watermelon",
            gradientColors: [Color("Light_13"), Color("Dark_13")]
        ),
        PCSOModel(
            title: "Cherry",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "cherry",
            gradientColors: [Color("Light_3"), Color("Dark_3")]
        ),
        PCSOModel(
            title: "Grapefruit",
            headline: "Sweet, bell-shaped fruits that have been enjoyed since ancient times. They can be eaten crisp or soft.",
            image: "grapefruit",
            gradientColors: [Color("Light_5"), Color("Dark_5")]
        ),
        PCSOModel(
            title: "Apple",
            headline: "Apples are one of the most popular, and exceptionally healthy fruit for good reason.",
            image: "apple",
            gradientColors: [Color("Light_1"), Color("Dark_1")]
        )
    ]
        
}
