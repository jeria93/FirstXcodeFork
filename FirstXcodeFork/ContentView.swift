//
//  ContentView.swift
//  FirstXcodeFork
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentColor = Color.white
    @State var changeColor: [Color] = [
        Color.orange,
        Color.red,
        Color.blue,
        Color.green
    ]
    var body: some View {
        
        ZStack {
            currentColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 60) {
                    
                Text("You changed the background color to \(currentColor.description)")
                
                Button("Change Color") {
                    
                    currentColor = changeColor.randomElement()!
                    
                    
                }.buttonStyle(BorderedButtonStyle())
                
            }
            
        }
       
        
    }
    
}

#Preview {
    ContentView()
}
