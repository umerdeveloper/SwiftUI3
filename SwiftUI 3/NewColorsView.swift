//
//  NewColorsView.swift
//  SwiftUI 3
//
//  Created by Umer Khan on 26/09/2021.
//

import SwiftUI

struct NewColorsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("New colors in SwiftUI 3:")
                    .fontWeight(.bold)
                    .font(.title2)
                Spacer()
            }
            .padding(.horizontal)
            VStack {
                HStack {
                    Group {
                        Rectangle()
                            .fill(.mint)
                        Rectangle()
                            .fill(.teal)
                        Rectangle()
                            .fill(.cyan)
                        Rectangle()
                            .fill(.indigo)
                        Rectangle()
                            .fill(.brown)
                    }
                    .frame(width: 64, height: 64)
                }
                HStack {
                    Group {
                        Text("mint").foregroundColor(.mint)
                        Text("teal").foregroundColor(.teal)
                        Text("cyan").foregroundColor(.cyan)
                        Text("indigo").foregroundColor(.indigo)
                        Text("brown").foregroundColor(.brown)
                    }
                    .frame(width: 64, height: 64)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct NewColorsView_Previews: PreviewProvider {
    static var previews: some View {
        NewColorsView()
    }
}
