//
//  ContentView.swift
//  FirstXcodeFork
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var names: [String] = []
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
