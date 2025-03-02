import SwiftUI

struct ContentView: View {
    
    @State private var currentColor = Color.white
    @State private var availableColors: [Color] = [
        .orange, .red, .blue, .green
    ]
    
    @State private var counter: Int = 0
    @State private var counterHistory: [Int] = []
    
    var body: some View {
        ZStack {
            currentColor.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text("Background color: \(currentColor.description)")
                
                Button("Change Color") {
                    if let randomColor = availableColors.randomElement() {
                        currentColor = randomColor
                    }
                }
                .buttonStyle(BorderedButtonStyle())
                
                Text("Current number: \(counter)")
                
                Button("Add random amount") {
                    let randomValue = Int.random(in: 1...100)
                    counter += randomValue
                    counterHistory.append(counter)
                }
                .buttonStyle(BorderedButtonStyle())
                
                Button("Subtract random amount") {
                    let randomValue = Int.random(in: 1...100)
                    counter -= randomValue
                    counterHistory.append(counter)
                }
                .buttonStyle(BorderedButtonStyle())
                
                List(counterHistory, id: \.self) { value in
                    Text("Value: \(value)")
                }
                .frame(height: 200)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
