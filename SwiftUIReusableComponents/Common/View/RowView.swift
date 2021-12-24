//
//  RowView.swift
//  ReusableSwiftUIComponents
//
//  Created by Kaustuv Mukherjee on 12/11/21.
//

import SwiftUI

struct RowView: View {

    @EnvironmentObject var appState: AppState
    var rowIndex: Int

    var body: some View {
        NavigationLink(destination: {
            switch appState.templateData[rowIndex].navigateTo {
            case .HSCROLL:
                HScrollView(templateIndex: rowIndex)
            case .VSCROLL:
                VScrollView(templateIndex: rowIndex)
            case .SINGLE:
                WrapperItemView(templateIndex: rowIndex)
            default:
                EmptyView()
            }
        }, label: {
            VStack {
                HStack {
                    Image(systemName: appState.templateData[rowIndex].image)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .foregroundColor(appState.templateData[rowIndex].colors[0])
                        .frame(width: 80, height: 80, alignment: .center)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: 2, y: 2)
                        .background(
                            LinearGradient(gradient: Gradient(colors:appState.templateData[rowIndex].colors), startPoint: .top, endPoint: .bottom)
                        )
                        .cornerRadius(30)
                        .padding(5)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(appState.templateData[rowIndex].title)
                            .font(.title2)
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(appState.templateData[rowIndex].caption)
                            .font(.caption)
                            .foregroundColor(Color.secondary)
                    }
                    Spacer()
                }
                .background(
                    LinearGradient(gradient: Gradient(colors:[Color.gray.opacity(0.8), Color.gray.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                )
            }
        })
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(rowIndex: 1)
            .environmentObject(AppState())
            .previewLayout(.sizeThatFits)
    }
}

