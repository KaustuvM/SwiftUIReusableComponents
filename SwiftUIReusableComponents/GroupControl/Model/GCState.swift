//
//  GCState.swift
//  SwiftUIReusableComponents
//
//  Created by Kaustuv Mukherjee on 1/19/22.
//

import Foundation
import SwiftUI


class GCState: ObservableObject {
    
    @Published var gcData: GCModel = GCModel(
        keys: ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"],
        values: ["192 kJ (46 kcal)","9.92 g","0.28 g","0.7 g","A, B1, B2, B3, B5, B6, B9","Calcium, Iron"]
    )
}
