//
//  ContentView.swift
//  SwiftUI 3
//
//  Created by Umer Khan on 26/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var soundOn = true
    @State private var nickname = "Somebody"
    @State private var email = "my@email.com"
    @State private var foreColor = Color.red
    @State private var bgColor = Color.black
    
    
    var body: some View {
        Form {
            DisclosureGroup("Sound Settings") {
                LazyVStack {
                    Text("Testing")
                    Text("Testing")
                    Text("Testing")
                    Text("Testing")
                    Text("Testing")
                    Text("Testing")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
