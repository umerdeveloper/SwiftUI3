//
//  ContentView.swift
//  SwiftUI 3
//
//  Created by Umer Khan on 26/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            
            NewColorsView()
                .tabItem {
                    Text("Colors")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
