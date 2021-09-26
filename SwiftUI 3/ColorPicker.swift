//
//  ColorPicker.swift
//  SwiftUI 3
//
//  Created by Umer Khan on 26/09/2021.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var toggle: Bool = false
    
    var body: some View {
        VStack {
            Group {
                TitleView(title: "New colors, SwiftUI3, WWDC21")
                NewColorsView()
            }
            Divider()
            Group {
                TitleView(title: "New button style")
                Button("Tap Here") { }
                .buttonStyle(.borderedProminent)
                Button("Tap Here") { }
                .buttonStyle(.bordered)
                Button("Tap Here") { }
                .buttonStyle(.borderless)
                Button("Tap Here") { }
                .buttonStyle(.plain)
                Button("Tap Here") { }
                .buttonStyle(.automatic)
            }
            
            Divider()
            
            VStack {
              Toggle(isOn: $toggle, label: { Text("Toggle on")})
              Toggle(isOn: .constant(false), label: { Text("Toggle off")})
              Toggle(isOn: .constant(true), label: { Text("Toggle on disabled")})
                .disabled(true)
              Toggle(isOn: .constant(false), label: { Text("Toggle off disabled")})
                .disabled(true)
            }
            .toggleStyle(ButtonToggleStyle())
            
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}

struct NewColorsView: View {
    var body: some View {
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
    }
}

struct TitleView: View {
    let title: String
    var body: some View {
        Text(title)
            .padding()
            .font(.body)
            .background(Color.red.opacity(0.1))
            .cornerRadius(6)
    }
}
